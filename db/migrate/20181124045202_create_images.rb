class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.string :image
      t.references :note, null:false, foreign_key: true
      t.timestamps
    end
  end
end
