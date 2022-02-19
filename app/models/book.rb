class Book < ApplicationRecord

  #belongs_to :user
  belongs_to :book
  attachment :image # ここを追加（_idは含めません）


end
