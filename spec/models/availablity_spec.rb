require 'spec_helper'

describe Group do
	it "should have something" do

	it { should have_many :students }

  it { should validate_presence_of :name}
  it { should validate_presence_of :teacher_first_name}
  it { should validate_presence_of :teacher_last_name}