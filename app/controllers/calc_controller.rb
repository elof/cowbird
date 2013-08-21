class CalcController < ApplicationController
  include CalcsHelper
  
  def index
    #homepage
  end

  def start
    render :calc
  end

  def calc
    # @params = params
    @avail = params[:availablity]
     @house = params[:house]
     @car = params[:car]
     
     @skills = Hash.new
     unless params[:returns].nil? then @skills[:returns] = params[:returns] end
    unless params[:photographer].nil? then @skills[:photographer] = params[:photographer] end
     unless params[:painter].nil? then @skills[:painter] = params[:painter] end
     unless params[:grocery].nil? then @skills[:grocery] = params[:grocery] end
     unless params[:yardwork].nil? then @skills[:yardwork] = params[:yardwork] end

     @house_value = calc_house_value @house
     @car_value = calc_car_value @car, @avail
     @skill_value = calc_skill_value @skills , @avail
     
     @total_value = @house_value + @car_value + @skill_value

     @has_house = true unless @house == 'no_room' || @house.nil?
     @has_car = true unless @car == 'none' || @car.nil?
     @has_four_car = true unless @car == 'none' || @car == 'two_car' || @car.nil?
     @has_skills = true unless @skills.length == 0

     render :money
  
  end

  def money
     @user = User.new
  end

  def create
    @user = User.new(params[:user])

    # respond_to do |format|
      if @user.save
         redirect_to done_path
    #     # format.json { render json: @product, status: :created, location: @product }
      else
    #     format.html { render action: "new" }
    #     # format.json { render json: @product.errors, status: :unprocessable_entity }
    #   end
    end
  end

end  
   # house - if you have something that you can rent from airbnb rent it 7 days per month at the set rate
   # @house = :house (120 x 7)
   # @house = :apt (190 x 7)
   # @house = :room (60 x 7)
   
   # score for car - two door = $109 per week as a rental
   # 2door car = $436 

   # availablity x 4 door car = $416 per week if avil weekdays, $366 per week if weeknights,
   # $375 per week if weekends, $852 per week if free all time.
   # 4door car + avail weekdays = 416 x 4 = 1,664

   # availablity x skills - weekdays 10, weeknights is worth 1 per day for a total of 4, 
     #weekends a total of 7, completely available is 19 per week.
     #multiply each time slot by $33
     #completely available = 19 x 33 x 4 = 2,812
