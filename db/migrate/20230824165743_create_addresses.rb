# frozen_string_literal: true

# CreateAddresses migration creates the address table
class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.string :country
      t.string :city
      t.string :state
      t.string :street

      t.timestamps
    end
  end
end
