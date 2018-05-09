class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.references :doctor, foreign_key: true
      t.references :patient, foreign_key: true
      t.string :diseases
      t.datetime :appointment_date

      t.timestamps
    end
  end
end
