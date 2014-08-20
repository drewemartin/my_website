class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.string :email
      t.string :name
      t.integer :blog_article_id

      t.timestamps
    end
  end
end
