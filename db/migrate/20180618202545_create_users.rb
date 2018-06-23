class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name, null: false
      t.string :last_name
      t.string :phone_number
      t.string :email, unique: true, null: false
      t.string :address

      t.timestamps
    end

    add_index :users, :email, unique: true
  end
end
