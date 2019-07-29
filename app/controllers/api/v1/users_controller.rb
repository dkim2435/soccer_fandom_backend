class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]

  
  def index
		render json: User.all
  end
  
  def profile
    render json: { user: UserSerializer.new(current_user) }, status: :accepted
  end

	def create
    @user = User.new(user_params)

    if @user.valid?
      @user.save
      @token = encode_token(user_id: @user.id)
      render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end
  
  def show
		@user = User.find(params[:id])
		render json: @user
  end
  
  def add_fandom
    team = Team.find_by_id(team_params["id"])
    if @user.teams.detect{|t| t.id == team.id}
      render json: {text: "You have already fandomed this team", type: "error" }, status:405
    else
      @user.add_to_fandom(team)
      render json: @user.teams, status: 200
    end
  end
  
  private
  
  def user_params
    params.require(:user).permit(:username, :email, :password)
  end

  def team_params
    params.require(:team).permit(
      :id, 
      :teamname, 
      :clubcolors, 
      :venue, 
      :image, 
      :league
    )
  end
end