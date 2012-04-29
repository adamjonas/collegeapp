# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

College.create(:name => "Harvard", :sat_min => 1500, :sat_max => 1570, :zip => "11123")

@user = User.create(:email => "test@user.com", password_digest => "test")

@profile = @user.create_profile(:sat_score => 1550)