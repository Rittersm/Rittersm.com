class Blog < ApplicationRecord

  validates :title, presence: true
  validates :body, presence: true
  validates :header_image, presence: true
  attachment :header_image

end
