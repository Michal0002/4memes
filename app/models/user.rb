# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  age                    :integer
#  username               :string
#  avatar                 :string
#
class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :age, numericality: { only_integer: true, greater_than: 0 }, allow_nil: true
  validates :username, presence: true, uniqueness: true
  validates :avatar, presence: true
  has_one_attached :avatar
  has_many :authored_memes, class_name: 'Meme', foreign_key: 'author_id'
end
