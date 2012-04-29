class UserActivity < ActiveRecord::Base

	belongs_to :user
	belongs_to :activity

	def college_activities
	profiles = Profile.where(@college.activities = @user.activites)
		profiles.collect do |profile|
			profile.user
		end
	end

end
