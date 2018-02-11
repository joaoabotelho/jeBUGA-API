class User < ApplicationRecord
  has_secure_password

  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy

  validates :username, presence: :true, uniqueness: :true,
    length: { in: 4..255 }
  validates :password, presence: :true,
    length: { in: 6..255 }
end
