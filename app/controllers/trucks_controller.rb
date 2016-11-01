class TrucksController < ApplicationController
  before_action :set_truck, only: [:show, :edit, :update, :destroy, :checkin, :checkout]
  before_filter :authenticate_user!, :except => [:show, :index, :home, :nearme]

  def index
    if params[:food_type] == nil
      @trucks = Truck.all
    else
      @trucks = Truck.where(food_type: params[:food_type])
    end
    @type = Truck.select(:food_type).order(:food_type).distinct
  end

  def create
    @truck = Truck.new(truck_params)
    respond_to do |format|
      if @truck.save
        format.html { redirect_to @truck, notice: 'New Food Truck was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end
  
  def new
    @truck = Truck.new
  end
  
  def show
  end
  
  def edit
  end

  def checkin
  end

  def checkout
  end

  def update
    respond_to do |format|
      if @truck.update(truck_params)
        format.html { redirect_to @truck, notice: 'Truck was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @truck.destroy
    respond_to do |format|
      format.html { redirect_to trucks_url, notice: 'Truck was successfully deleted.' }
    end
  end

  def profile
  end
  

  
  def home
  end

  def help
  end

end


private
  def set_truck
    @truck = Truck.find(params[:id])
  end
    
  def truck_params
    params.require(:truck).permit(:business_name, :website, :phone, :owner_name, :business_address, :email, :current_location, :latitude, :longitude, :food_type, :avatar, :user_id, :avatar, :username, :location)
  end