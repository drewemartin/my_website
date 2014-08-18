class CreateBlogArticles < ActiveRecord::Migration
  def change
    create_table :blog_articles do |t|
      t.text :body
      t.string :title
      t.boolean :publish_now
      t.integer :user_id

      t.timestamps
    end
  end
end
