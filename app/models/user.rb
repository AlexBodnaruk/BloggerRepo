class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

    has_many :posts
    validates :firstName, presence: true
    validates :lastName, presence: true
    validates :fatherName, presence: true
    validates :NickName, presence: true
    validates :birthday, presence: true

end