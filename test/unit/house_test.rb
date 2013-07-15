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

require 'test_helper'

class HouseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
