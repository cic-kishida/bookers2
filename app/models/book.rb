class Book < ApplicationRecord

  #belongs_to :user
  belongs_to :book
  attachment :image # ここを追加（_idは含めません）

  has_many :post_images, dependent: :destroy
  has_many :books, dependent: :destroy

end