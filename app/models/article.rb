class Article < ApplicationRecord
  belongs_to :note
  belongs_to :magazine
end
