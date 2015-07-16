class Api::EntrantsController < ApplicationController
  def index
    @entrants = Entrant.all
    render json: @entrants
  end
end
