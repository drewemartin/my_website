json.array!(@blog_articles) do |blog_article|
  json.extract! blog_article, :id, :body, :title, :publish_now, :user_id
  json.url blog_article_url(blog_article, format: :json)
end
