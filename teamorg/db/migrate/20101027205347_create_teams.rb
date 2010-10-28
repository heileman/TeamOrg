class CreateTeams < ActiveRecord::Migration
  def self.up
    create_table :teams do |t|
      t.string :name
      t.integer :organization_id
      t.integer :current_roster

      t.timestamps
    end
  end

  def self.down
    drop_table :teams
  end
end
