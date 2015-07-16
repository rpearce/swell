class Api::SurfersController < ApplicationController
  def index
    @surfers = Surfer.all
    render json: @surfers
  end

  def create
    @surfer = Surfer.new(surfer_params)
    if @surfer.save
      render status: 201
    else
      render json: @surfer.errors, status: 422
    end
  end

  def destroy
    @surfer = Surfer.find(params[:id])
    @surfer.destroy
    render head: :no_content
  end

  private

  def surfer_params
    params.require(:surfer).permit(:name, :age, :picture, :hometown)
  end
end
