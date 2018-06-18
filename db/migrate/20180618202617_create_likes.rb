class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.string :art
      t.string :cinema
      t.string :music

      t.timestamps
    end
  end
end
