class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates :title, presence: true,
                    length: { minimum: 2, maximum: 255 }
  validates :body, presence: true,
                   length: { minimum: 1, maximum: 5000 }
end
