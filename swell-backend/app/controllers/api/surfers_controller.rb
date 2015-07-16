class Api::SurfersController < ApplicationController
  def index
    @surfers = Surfer.all
    render json: @surfers
  end
end
