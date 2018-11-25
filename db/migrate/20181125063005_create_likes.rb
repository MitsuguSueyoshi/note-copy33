class CreateLikes < ActiveRecord::Migration[5.1]
  def change
    create_table :likes do |t|
      t.references :user, null: false, foreign_key: true
      t.references :note, null: false, foreign_key: true
      t.timestamps
    end
  end
end
