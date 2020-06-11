class Post < ApplicationRecord

  validates :story, length: { maximum: 300 }
  belongs_to :user
  
end
