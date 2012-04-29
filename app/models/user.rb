class User < ActiveRecord::Base
	has_secure_password

	has_one :profile
	has_many :user_activities
	has_many :activities, :through => :user_activities



	def potential_college
		College.where(":sat_score >= sat_min AND :sat_score <= sat_max",
		 {:sat_score => self.profile.sat_score})
	end

	after_create :build_default_profile

	def build_default_profile
		self.create_profile
	end

	def activities_tokens
	end

	def activities_tokens=(string_csv)
		# seperate the string by commas
		# for each seperate activity
			# Find or create an activity by that name
			# add that actvitiy to the user
		string_csv.split(",").each do |activity|
			a = Activity.find_or_create_by_activity_name(activity.strip)
			self.activities << a
	end
end

	

end
