class CreateNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :notes do |t|
      t.string :title, null:false
      t.text :text, null:false
      t.integer :category, null:false
      t.references :user, null:false, foreign_key: true
      t.timestamps
    end
  end
end
