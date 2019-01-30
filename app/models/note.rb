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

  def self.my_notes(user_id)
    Note.where(user_id: user_id).order("created_at DESC")
  end

  def self.create_all_ranks
    Note.find(Like.group(:note_id).order('count(note_id) desc').limit(3).pluck(:note_id))
  end

  def self.get_followings_note(follow_users,current_user,page)
    Note.where(user_id: follow_users).or(Note.where(user_id: current_user.id)).includes(:user).order("created_at DESC").page(page).per(10)
  end

end
