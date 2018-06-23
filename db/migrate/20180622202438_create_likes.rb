class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.belongs_to :user, index: true
      t.string :art
      t.string :cinema
      t.string :music

      t.timestamps
    end
  end
end
