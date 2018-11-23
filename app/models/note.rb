class Note < ApplicationRecord
  belongs_to :user

  enum category: { マンガ: 0, コラム: 1, 小説: 2, サウンド: 3, ビジネス: 4, ライフスタイル: 5, テクノロジー: 6, エンタメ: 7 }
end
