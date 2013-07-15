# == Schema Information
#
# Table name: houses
#
#  id         :integer          not null, primary key
#  type       :string(255)
#  location   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class House < ActiveRecord::Base
  attr_accessible :location, :type, :user_id
  belongs_to :user
end
