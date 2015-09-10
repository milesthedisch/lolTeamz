# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :text
#  password_digest :text
#  image           :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  point_id        :integer
#  team_id         :integer
#  character_id    :integer
#

class User < ActiveRecord::Base
	has_secure_password
	belongs_to :team
	has_many :points		
	validates :username, :presence => true, :uniqueness => true
end
