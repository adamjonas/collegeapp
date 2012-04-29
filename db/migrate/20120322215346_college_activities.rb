class CollegeActivity < ActiveRecord::Migration
  def up
  	add_column(:colleges, :activities, :string)
  end

  def down
  end
end
