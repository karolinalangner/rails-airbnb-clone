class PagesController < ApplicationController
  def home
    if params.dig(:search, :brand).present?
      @cars = Car.search_by_title_and_model(params.dig(:search, :brand))
    else
      @cars = Car.all
    end

    if params.dig(:search, :starts_at).present? && params.dig(:search, :ends_at).present?
      starts_at = Date.parse(params.dig(:search, :starts_at))
      ends_at = Date.parse(params.dig(:search, :ends_at))
      @cars = @cars.select do |car|
        car.bookings.all? do |booking|
          starts_at > booking.end_date || ends_at < booking.start_date
        end
      end
    end
  end
end

# @cars si all bookings return
# start date query > end date booking
# or
# end date  query < start date booking
