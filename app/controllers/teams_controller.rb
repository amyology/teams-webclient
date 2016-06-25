class TeamsController < ApplicationController

  def index
    @teams = Team.all
  end

  def show
    @team = Team.find(params[:id])
  end

  def new

  end

  def create
    @team = Unirest.post("http://localhost:3000/api/teams.json",
            headers: { "Accept" => "application/json" }, 
            parameters: { 
                name: params[:name],
                creature: params[:creature],
                state: params[:state],
                sport: params[:sport]
             }).body
    render :show
  end

  def edit

  end

  def update
    @id = params[:id]
    @team = Unirest.patch("http://localhost:3000/api/teams.json",
            headers: { "Accept" => "application/json" }, 
            parameters: { 
                name: params[:name],
                creature: params[:creature],
                state: params[:state],
                sport: params[:sport]
             }).body
  end

  def destroy

  end

end
