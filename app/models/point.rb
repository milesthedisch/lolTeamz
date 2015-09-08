# == Schema Information
#
# Table name: points
#
#  id         :integer          not null, primary key
#  value      :integer
#  title      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Point < ActiveRecord::Base
	belongs_to :user
end
