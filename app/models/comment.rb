class Comment < ApplicationRecord
    has_one :user
    belongs_to :post
    validates :commentText, presence: true
    validates :commentTime, presence: true

end
