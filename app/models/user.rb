class User < ApplicationRecord
    has_many :todo_lists, dependent: :destroy
    has_many :items, through: :todo_lists

    has_many :follows, dependent: :destroy

    has_many :followed_users, foreign_key: :follower_id, class_name: 'Follow'
    has_many :followings, through: :followed_users
    has_many :following_users, foreign_key: :following_id, class_name: 'Follow'
    has_many :followers, through: :following_users
    validates :username, uniqueness: true
    has_secure_password
end
