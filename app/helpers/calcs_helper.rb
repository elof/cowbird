module CalcsHelper
		
	$house_value_map = {}
	$house_value_map['house'] = 146;
	$house_value_map['apartment'] = 98;
	$house_value_map['room'] = 41;
	$house_value_map['no_room'] = 0;

	$car_value_map = {}
	$car_value_map['two_door'] = 389;
	$car_value_map['four_door'] = 67;

	$avail_value_map = {}
	$avail_value_map['week_days'] = 7;
	$avail_value_map['week_day_evenings'] = 5;
	$avail_value_map['weekends'] = 5;
	$avail_value_map['open'] = 14;
	$avail_value_map['no_availablity'] = 0;

	SKILL_VALUE_ONE = 22;
	SKILL_VALUE_TWO = 31;
	SKILL_VALUE_THREE = 36;
	SKILL_VALUE_MANY = 44;


	def calc_house_value a_house
 		result = 0
   	unless a_house.nil?
   		result = $house_value_map[a_house] * 7
   	end		
   	result
  end

  def calc_car_value a_car, avail
  	result = 0
   	if a_car == 'two_door'
   		result = $car_value_map[a_car]
   	elsif a_car == 'four_door'
  		result = $car_value_map[a_car] * $avail_value_map[avail]
  	end
  	result 
  end

  
  def calc_skill_value skills, avail
  	result = 0
  	case skills.length
		  when 1
		  		result = SKILL_VALUE_ONE * $avail_value_map[avail]
		  when 2
		  		result = SKILL_VALUE_TWO * $avail_value_map[avail]	
		  when 3
		  		result = SKILL_VALUE_THREE * $avail_value_map[avail]
		  when skills.length > 3
		  		result = SKILL_VALUE_MANY * $avail_value_map[avail]
  	end
  	result 
	end

end
