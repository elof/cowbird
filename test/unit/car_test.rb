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

require 'test_helper'

class CarTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
