class Note < ApplicationRecord
  belongs_to :user
  has_many :articles, dependent: :destroy
  has_many :images, dependent: :destroy
  has_many :likes, dependent: :destroy
  def like_user(user_id)
   likes.find_by(user_id: user_id)
  end
  has_many :comments, dependent: :destroy
  has_many :magazines, through: :articles
  accepts_nested_attributes_for :images

  validates :title, presence: true
  validates :text, presence: true
  validates :category, presence: true

  enum category: { マンガ: 0, コラム: 1, 小説: 2, サウンド: 3, ビジネス: 4, ライフスタイル: 5, テクノロジー: 6, エンタメ: 7 }
end
