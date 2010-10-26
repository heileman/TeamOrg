class CreateEmailsPeople < ActiveRecord::Migration
  def self.up
    create_table :emails_people, :id => false do |t|  # join table, so no primary key
      t.integer :person_id, :null=>false  # foreign key
      t.integer :email_id, :null=>false  # foreign key

      t.timestamps
    end
  end

  def self.down
    drop_table :emails_people
  end
end
