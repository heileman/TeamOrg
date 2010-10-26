class CreatePeople < ActiveRecord::Migration
  def self.up
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.string :date_of_birth
      t.integer :sex

      t.timestamps
    end
  end

  def self.down
    drop_table :people
  end
end