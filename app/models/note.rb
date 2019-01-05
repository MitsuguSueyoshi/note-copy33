class Note < ApplicationRecord
  belongs_to :user
  has_many :articles, dependent: :destroy
  has_many :images, dependent: :destroy
  has_many :likes, dependent: :destroy
  is_impressionable
  def like_user(user_id)
   likes.find_by(user_id: user_id)
  end
  has_many :comments, dependent: :destroy
  has_many :magazines, through: :articles
  accepts_nested_attributes_for :images

  validates :title, presence: true
  validates :text, presence: true
  validates :category, presence: true

  scope :search_with_category, ->(category) { where(category: category) }
  scope :recent, -> { includes(:user).order("created_at DESC").limit(9) }

  enum category: { マンガ: 0, コラム: 1, 小説: 2, 写真: 3, サウンド: 4, ビジネス: 5, ライフスタイル: 6, テクノロジー: 7, エンタメ: 8 }

  def previous
    user.notes.order('created_at desc, id desc').where('created_at <= ? and id < ?', created_at, id).first
  end

  def next
    user.notes.order('created_at desc, id desc').where('created_at >= ? and id > ?', created_at, id).reverse.first
  end
end
