class CreateEmployeeWorkTimes < ActiveRecord::Migration[5.2]
  def change
    create_table :employee_work_times do |t|
      t.string :day
      t.time :startTime
      t.time :endTime

      t.timestamps
    end
  end
end
