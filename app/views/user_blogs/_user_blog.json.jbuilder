json.extract! user_blog, :id, :title, :author, :created_at, :updated_at
json.url user_blog_url(user_blog, format: :json)
