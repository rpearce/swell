class Api::CompetitionsController < ApplicationController
  def index
    @competition = Competition.all
    render json: @competition
  end
end
