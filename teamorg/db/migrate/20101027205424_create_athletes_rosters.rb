class CreateAthletesRosters < ActiveRecord::Migration
  def self.up
    create_table :athletes_rosters, :id => false do |t|  # join table, so no primary key
      t.integer :athlete_id, :null=>false  # foreign key
      t.integer :roster_id, :null=>false  # foreign key
      t.integer :jersey_number

      t.timestamps
    end
  end

  def self.down
    drop_table :athletes_rosters
  end
end
