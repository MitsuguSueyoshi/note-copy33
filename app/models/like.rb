class Like < ApplicationRecord
  belongs_to :user
  belongs_to :note, counter_cache: :likes_count
end
