class PagesController < ApplicationController
  def home
    @cars = Car.all.sample(10)
  end
end
