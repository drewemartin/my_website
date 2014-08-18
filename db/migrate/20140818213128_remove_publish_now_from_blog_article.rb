class RemovePublishNowFromBlogArticle < ActiveRecord::Migration
  def change
    remove_column :blog_articles, :publish_now, :boolean
  end
end
