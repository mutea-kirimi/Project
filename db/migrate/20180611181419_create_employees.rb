class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :surname
      t.string :phone
      t.string :email
      t.string :pictureUrl

      t.timestamps
    end
  end
end
