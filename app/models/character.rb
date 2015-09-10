# == Schema Information
#
# Table name: characters
#
#  id         :integer          not null, primary key
#  name       :text
#  image      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  lore       :text
#

class Character < ActiveRecord::Base
	has_and_belongs_to_many :teams	
end
