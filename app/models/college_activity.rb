class CollegeActivity < ActiveRecord::Base

	belongs_to :college
	belongs_to :activites

	def user_activities
	profiles = Profile.where(@user.activities = @college.activites)
		#loop through the profiles and return the user
		profiles.collect do |profile|
			profile.user
		end
	end	

end
