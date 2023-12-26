class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :age, numericality: { only_integer: true, greater_than: 0 }, allow_nil: true
  validates :username, presence: true, uniqueness: true
  validates :avatar, presence: true
  has_one_attached :avatar

end
