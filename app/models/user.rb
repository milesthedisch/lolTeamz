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
#

class User < ActiveRecord::Base
	has_secure_password
	belongs_to :team

	validates :username, :presence => true, :uniqueness => true
end
