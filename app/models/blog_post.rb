# == Schema Information
#
# Table name: blog_posts
#
#  id           :bigint           not null, primary key
#  content      :text
#  title        :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  user_blog_id :bigint
#
# Indexes
#
#  blog_post_id_index                (id) UNIQUE
#  blog_posts_user_blog_id_index     (user_blog_id)
#  index_blog_posts_on_content       (content)
#  index_blog_posts_on_created_at    (created_at)
#  index_blog_posts_on_title         (title)
#  index_blog_posts_on_updated_at    (updated_at)
#  index_blog_posts_on_user_blog_id  (user_blog_id)
#
class BlogPost < ApplicationRecord
  belongs_to :user_blog

  scope :for_blog, ->(id) { where("user_blog_id = ?", id) }

  before_validation :check_title_presence

  private

    def check_title_presence
      if title == "" || title == nil
        errors.add(:title, "can not be blank")
      end
    end
end
