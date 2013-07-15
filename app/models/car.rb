# == Schema Information
#
# Table name: cars
#
#  id           :integer          not null, primary key
#  number_doors :string(255)
#  services     :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Car < ActiveRecord::Base
  attr_accessible :number_doors, :services, :user_id
  belongs_to :user
  has_one :availability
end
