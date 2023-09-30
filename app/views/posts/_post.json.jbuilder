json.extract! post, :id, :picture_url, :comment, :likes, :created_at, :updated_at
json.url post_url(post, format: :json)
