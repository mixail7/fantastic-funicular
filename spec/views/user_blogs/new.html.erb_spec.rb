require 'rails_helper'

RSpec.describe "user_blogs/new", type: :view do
  before(:each) do
    assign(:user_blog, UserBlog.new(
      title: "MyString",
      author: "MyString"
    ))
  end

  it "renders new user_blog form" do
    render

    assert_select "form[action=?][method=?]", user_blogs_path, "post" do

      assert_select "input[name=?]", "user_blog[title]"

      assert_select "input[name=?]", "user_blog[author]"
    end
  end
end
