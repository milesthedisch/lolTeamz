# == Schema Information
#
# Table name: characters
#
#  id         :integer          not null, primary key
#  name       :text
#  image      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  team_id    :integer
#

class Character < ActiveRecord::Base
	belongs_to :team
end
