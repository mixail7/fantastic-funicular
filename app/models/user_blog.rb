# == Schema Information
#
# Table name: user_blogs
#
#  id         :bigint           not null, primary key
#  title      :string
#  author     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class UserBlog < ApplicationRecord
  validates :author, presence: true
end
