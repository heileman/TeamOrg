class CreateAthletesParents < ActiveRecord::Migration
  def self.up
    create_table :athletes_parents, :id => false do |t|  # join table, so no primary key
      t.integer :athlete_id, :null=>false  # foreign key
      t.integer :person_id, :null=>false  # foreign key

      t.timestamps
    end
  end

  def self.down
    drop_table :athletes_parents
  end
end
