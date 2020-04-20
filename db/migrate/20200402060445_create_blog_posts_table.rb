class CreateBlogPostsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :blog_posts do |t|
      t.belongs_to :user_blog
      t.string :title
      t.text :content
      t.timestamps
    end
  end
end
