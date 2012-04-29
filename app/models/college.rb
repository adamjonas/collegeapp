class College < ActiveRecord::Base

	has_many :college_activities
	has_many :activities, :through => :college_activities

	#all profiles whose sat_score is within the range of the colleges
	#once we have the profile, getting the user is easy
	def potential_users
	profiles = Profile.where("sat_score >= :sat_min AND sat_score <= :sat_max", {:sat_min => self.sat_min, :sat_max => self.sat_max})

		#loop through the profiles and return the user
		profiles.collect do |profile|
			profile.user
		end
	end	

	validates :name, :presence => true

end
