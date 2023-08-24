# frozen_string_literal: true

# CreateDoctors migration creates the doctors table
class CreateDoctors < ActiveRecord::Migration[7.0]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :email
      t.string :phone_number
      t.string :picture
      t.string :specialty
      t.decimal :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
