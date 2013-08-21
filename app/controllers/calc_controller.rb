class CalcController < ApplicationController
  include CalcsHelper
  
  def index
    #homepage
  end

  def start
    render :calc
  end

  def calc
    # Only variables that are used in the template should use @
    avail = params[:availablity]
    house = params[:house]
    car = params[:car]
     
    @skills = {
      returns: params[:returns],
      photographer: params[:photographer],
      painter: params[:painter],
      grocery: params[:grocery],
      yardwork: params[:yardwork]
    }
    # Only keep the skills that aren't nil
    @skills = @skills.select do |k, v|
      v.present?
    end

    house_value = calc_house_value house
    car_value = calc_car_value car, avail
    skill_value = calc_skill_value @skills, avail
     
    @total_value = house_value + car_value + skill_value

    @has_house = true unless house == 'no_room' || house.nil?
    @has_car = true unless car == 'none' || car.nil?
    @has_four_car = true unless car == 'none' || car == 'two_car' || car.nil?
    @has_skills = true unless @skills.length == 0

    render :money
  end

  def money
    @user = User.new
  end

  def create
    @user = User.new(params[:user])

    # Throws an error if can't save
    @user.save!
    redirect_to done_path
  end
end  
