class User < ActiveRecord::Base
    validates :username, presence: true, uniqueness: { case_sensitive: false }, length: {minimum: 3, maximum: 15}
    validates :email, presence: true, uniqueness: { case_sensitive: false }, length: {minimum: 3, maximum: 15}, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i}
end