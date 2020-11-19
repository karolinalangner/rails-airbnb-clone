class PagesController < ApplicationController
  def home
    if params[:query].present?
      @cars = Car.search_by_title_and_model(params[:query])
    else
      @cars = Car.all.sample(10)
    end
  end
end
