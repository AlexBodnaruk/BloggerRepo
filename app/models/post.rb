class Post < ApplicationRecord

  has_one_attached :image
  
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_and_belongs_to_many :categories
  validates :title, presence: true
  validates :text, presence: true
  validates :postTime, presence: true

end
