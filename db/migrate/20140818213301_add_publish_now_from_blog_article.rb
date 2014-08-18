class AddPublishNowFromBlogArticle < ActiveRecord::Migration
  def change
    add_column :blog_articles, :publish_now, :string
  end
end
