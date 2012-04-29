class Activity < ActiveRecord::Base

	has_many :user_activities
	has_many :users, :through => :user_activities
	#this is a pattern. To define the join table relationship it
	# first much have a direct relationship
	has_many :college_activities
	has_many :colleges, :through => :college_activities

end