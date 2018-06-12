class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.references :employee, foreign_key: true
      t.references :customer, foreign_key: true
      t.references :service, foreign_key: true
      t.datetime :begin

      t.timestamps
    end
  end
end
