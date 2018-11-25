class CreateMagazines < ActiveRecord::Migration[5.1]
  def change
    create_table :magazines do |t|
      t.string :title, null: false
      t.string :header_image
      t.text :description
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
