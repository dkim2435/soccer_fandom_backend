class Api::V1::FandomsController < ApplicationController
  def create
    @fan = Fandom.new(fan_params)
    if @fan.save
      render json: @fan
    else
      render json: {}, status: :unprocessable_entity
    end
  end

  def destroy
    @fan = Fandom.find(params[:id])
    @fan.destroy
  end

  private

  def fan_params
    params.permit(:user_id, :team_id)
  end

end