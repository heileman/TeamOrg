class CreateAddresses < ActiveRecord::Migration
  def self.up
    create_table :addresses do |t|
      t.string :line1
      t.string :line2
      t.string :city
      t.string :state
      t.string :country
      t.string :postal_code
      t.integer :address_type

      t.timestamps
    end
  end

  def self.down
    drop_table :addresses
  end
end
