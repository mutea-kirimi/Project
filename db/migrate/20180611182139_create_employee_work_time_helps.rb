class CreateEmployeeWorkTimeHelps < ActiveRecord::Migration[5.2]
  def change
    create_table :employee_work_time_helps do |t|
      t.references :employee, foreign_key: true
      t.references :employeeWorkTime, foreign_key: true

      t.timestamps
    end
  end
end
