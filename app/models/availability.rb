# == Schema Information
#
# Table name: availabilities
#
#  id          :integer          not null, primary key
#  day_of_week :string(255)
#  time_of_day :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Availability < ActiveRecord::Base
  attr_accessible :day_of_week, :time_of_day
end
