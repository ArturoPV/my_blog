class Comment < ApplicationRecord
  belongs_to :article
  validates :body, presence: true, length: { maximum: 20, minimum: 2 }
end
