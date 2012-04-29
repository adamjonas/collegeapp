class ProfileActivities < ActiveRecord::Migration
  def up
  	add_column(:profiles, :activities, :string)
  end

  def down
  end
end
