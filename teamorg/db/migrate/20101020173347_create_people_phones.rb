class CreatePeoplePhones < ActiveRecord::Migration
  def self.up
    create_table :people_phones, :id => false do |t|  # join table, so no primary key
      t.integer :person_id, :null=>false  # foreign key
      t.integer :phone_id, :null=>false  # foreign key

      t.timestamps
    end
  end

  def self.down
    drop_table :people_phones
  end
end
