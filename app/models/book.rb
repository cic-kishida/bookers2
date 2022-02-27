class Book < ApplicationRecord

  belongs_to :user
  #belongs_to :book
  # attachment :image # ここを追加（_idは含めません）

  validates :title, presence: true

#  def favorited_by?(user)
#    favorites.where(user_id: user.id).exists?
#  end


end
