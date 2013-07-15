# == Schema Information
#
# Table name: skill
#
#  id         :integer          not null, primary key
#  skill      :string(255)
#  rate       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Skill < ActiveRecord::Base
  attr_accessible :rate, :skill
  has_one :availability
end
