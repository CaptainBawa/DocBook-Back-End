class CreateDoctorAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :doctor_addresses do |t|
      t.references :doctor, null: false, foreign_key: true
      t.references :address, null: false, foreign_key: true

      t.timestamps
    end
  end
end
