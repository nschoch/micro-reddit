class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :body, presence: true,
                   length: { minimum: 1, maximum: 5000 }
end
