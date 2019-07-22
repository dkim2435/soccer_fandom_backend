class Api::V1::LeaguesController < ApplicationController

  def index
    @leagues = League.all
    render json: @leagues
  end

  def show
    render json: League.find(params[:id])
  end

  def league_teams
    if params[:criteria].to_i == 0
      @league = League.find_by(leaguename: params[:criteria])
    else
      @league = League.find(params[:criteria])
    end

    render json: @league.teams
  end

end
