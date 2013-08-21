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

module CalcsHelper
  $house_value_map = {
    'house' => 146,
    'apartment' => 98,
    'room' => 41,
    'no_room' => 0
  }

  $car_value_map = {
    'two_door' => 389,
    'four_door' => 67
  }

  $avail_value_map = {
    'week_days' => 7,
    'week_day_evenings' => 5,
    'weekends' => 5,
    'open' => 14,
    'no_availablity' => 0
  }

  $skill_value = [0, 22, 31, 36, 44]

  def calc_house_value a_house
    return 0 unless a_house.present?
    $house_value_map[a_house] * 7
  end


  def calc_car_value a_car, avail
    # Ruby always returns the last value it calculated - no need to store it in
    # a result variable.
    if a_car == 'two_door'
      $car_value_map[a_car]
    elsif a_car == 'four_door'
      $car_value_map[a_car] * $avail_value_map[avail]
    else
      0
   end
  end

  
  def calc_skill_value skills, avail
    # Rather than using a case statement, can just use the skills as an offset
    # in an array. Have to make sure we don't go off the end of the array though.
    num_skills = [skills.length, 4].min
    $skill_value[num_skills] * $avail_value_map[avail]
  end
end
