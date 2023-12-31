# == Schema Information
#
# Table name: memes
#
#  id         :integer          not null, primary key
#  title      :string
#  image_url  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Meme < ApplicationRecord
    validates :title, presence: { message: "must be provided" }, length: { minimum: 5, maximum: 100, message: "should be between 5 and 100 characters" }
    validates :image_url, presence: { message: "must be provided" }
    validates :author_id, presence: true

    has_one_attached :image_url

    belongs_to :user, foreign_key: 'author_id', optional: true
    enum status: { pending: 0, approved: 1, banned: 2 }
end
