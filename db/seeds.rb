# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Point.destroy_all

p1 = Point.create :title => 'Bronze'
p2 = Point.create :title => 'Silver'
p3 = Point.create :title => 'Gold'

Team.destroy_all

t1 = Team.create :teamname => 'General Assembely'
t2 = Team.create :teamname => 'The Other Team'

User.destroy_all
 
u1 = User.create :username => 'thedischman', :password => 'chicken', :team_id => t1.id
u2 = User.create :username => 'chodemonster', :password => 'chicken', :team_id => t1.id
u3 = User.create :username => 'dude123', :password => 'chicken', :team_id => t1.id
u4 = User.create :username => 'gionmarco', :password => 'chicken', :team_id => t1.id
u5 = User.create :username => 'whatsupman', :password => 'chicken',	 :team_id => t1.id

Character.all.each do |character|
	t1.characters << character
end

Character.all.each do |character|
	t2.characters << character
end



















