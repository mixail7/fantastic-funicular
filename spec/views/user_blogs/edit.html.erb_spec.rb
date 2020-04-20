require 'rails_helper'

RSpec.describe "user_blogs/edit", type: :view do
  before(:each) do
    @user_blog = assign(:user_blog, UserBlog.create!(
      title: "MyString",
      author: "MyString"
    ))
  end

  it "renders the edit user_blog form" do
    render

    assert_select "form[action=?][method=?]", user_blog_path(@user_blog), "post" do

      assert_select "input[name=?]", "user_blog[title]"

      assert_select "input[name=?]", "user_blog[author]"
    end
  end
end
