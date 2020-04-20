class AddIndex < ActiveRecord::Migration[6.0]
  def change
    add_index :blog_posts, :id, unique: true, name: 'blog_post_id_index'
    add_index :blog_posts, :user_blog_id, name: 'blog_posts_user_blog_id_index'
    add_index :blog_posts, :title
    add_index :blog_posts, :content
    add_index :blog_posts, :created_at
    add_index :blog_posts, :updated_at
  end
end
