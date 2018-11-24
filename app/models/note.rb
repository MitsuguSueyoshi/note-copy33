class Note < ApplicationRecord
  belongs_to :user
  has_many :images
  accepts_nested_attributes_for :images

  validates :title, presence: true
  validates :text, presence: true
  validates :category, presence: true

  enum category: { マンガ: 0, コラム: 1, 小説: 2, サウンド: 3, ビジネス: 4, ライフスタイル: 5, テクノロジー: 6, エンタメ: 7 }
end
