class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.references :note, null: false, foreign_key: true
      t.references :magazine, null: false, foreign_key: true
      t.timestamps
    end
  end
end
