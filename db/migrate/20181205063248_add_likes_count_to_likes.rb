class AddLikesCountToLikes < ActiveRecord::Migration[5.1]
  def change
    add_column :notes, :likes_count, :integer
  end
end
