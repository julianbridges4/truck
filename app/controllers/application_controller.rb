class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception
  before_filter :add_navbar_text
  
  def add_navbar_text
    @type = Truck.select(:food_type).order(:food_type).distinct
  end

end