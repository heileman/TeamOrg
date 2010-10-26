class CreateAddressesPeople < ActiveRecord::Migration
  def self.up
    create_table :addresses_people, :id => false do |t|  # join table, so no primary key
      t.integer :person_id, :null=>false  # foreign key
      t.integer :address_id, :null=>false  # foreign key

      t.timestamps
    end
  end

  def self.down
    drop_table :addresses_people
  end
end
