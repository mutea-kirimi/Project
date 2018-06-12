class CreateNoneAvailabilities < ActiveRecord::Migration[5.2]
  def change
    create_table :none_availabilities do |t|
      t.string :comment
      t.date :endDate
      t.date :beginDate
      t.references :employee, foreign_key: true

      t.timestamps
    end
  end
end
