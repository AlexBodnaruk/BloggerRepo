class Like < ApplicationRecord

    has_one :user
    
    belongs_to :post
    validates :likeTime, presence: true
    
end
