class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users,
    {
        :id          => false,
        :primary_key => :email
    } do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.string :email
      t.string :address

      t.timestamps
    end
  end
end
