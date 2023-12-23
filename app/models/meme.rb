class Meme < ApplicationRecord
    validates :title, presence: true
    validates :image_url, presence: true
    has_one_attached :image_url

end
