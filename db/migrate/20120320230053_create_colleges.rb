class CreateColleges < ActiveRecord::Migration
  def change
    create_table :colleges do |t|
      t.integer :sat_min
      t.integer :sat_max
      t.string :zip
      t.string :name

      t.timestamps
    end
  end
end
