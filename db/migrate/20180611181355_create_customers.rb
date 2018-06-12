class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :surname
      t.string :phone
      t.string :email
      t.string :pictureUrl
      t.string :street
      t.string :plz
      t.string :city
      t.string :username
      t.string :passsword

      t.timestamps
    end
  end
end
