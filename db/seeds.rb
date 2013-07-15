# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   House.create(name: 'Emanuel', city: cities.first)

Car.delete_all
House.delete_all
Skill.delete_all

u1 = User.create(:email => 'elofjohnson@gmail.com', :location => 'San Francisco')



c1 = Car.create(:number_doors => 'two', :services => 'rental')
c2 = Car.create(:number_doors => 'four', :services => 'rental')
c3 = Car.create(:number_doors => 'four', :services => 'rideshare')

h1 = House.create(:location => 'suburb', :type => 'rental')
h2 = House.create(:location => 'suburb', :type => 'rental')
h3 = House.create(:location => 'suburb', :type => 'rental')
h4 = House.create(:location => 'city', :type => 'rental')
h5 = House.create(:location => 'city', :type => 'rental')
h6 = House.create(:location => 'city', :type => 'rental')

s1 = Skill.create(:rate => '74', :skill => 'painting')
s2 = Skill.create(:rate => '46', :skill => 'cleaning')
s3 = Skill.create(:rate => '38', :skill => 'baby sitting')
s4 = Skill.create(:rate => '35', :skill => 'grocey shopping')
s5 = Skill.create(:rate => '42', :skill => 'ikea assembly')
s6 = Skill.create(:rate => '32', :skill => 'returns and exchanges')

a1 = Availability.create(:day_of_week => 'MON', :time_of_day => 'PM')

