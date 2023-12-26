class Meme < ApplicationRecord
    validates :title, presence: { message: "must be provided" }, length: { minimum: 5, maximum: 100, message: "should be between 5 and 100 characters" }
    validates :image_url, presence: { message: "must be provided" }, format: { with: /\.(png|jpg|jpeg)\z/i, message: "must be a valid image format" }
    has_one_attached :image_url
end
