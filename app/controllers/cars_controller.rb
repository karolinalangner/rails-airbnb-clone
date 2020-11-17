class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    @car.save
    redirect_to car_path(@car.id)
  end

  private

  def car_params
    params.require(:car).permit(:model, :brand, :price, :description, :title)
  end
end
