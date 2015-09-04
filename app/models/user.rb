# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  username   :text
#  password   :text
#  image      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  team_id    :integer
#

class User < ActiveRecord::Base
	belongs_to :team
end
