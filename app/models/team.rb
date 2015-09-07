# == Schema Information
#
# Table name: teams
#
#  id         :integer          not null, primary key
#  teamname   :text
#  image      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Team < ActiveRecord::Base
	has_many :users
	has_many :characters
end
