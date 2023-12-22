json.extract! meme, :id, :title, :image_url, :created_at, :updated_at
json.url meme_url(meme, format: :json)
