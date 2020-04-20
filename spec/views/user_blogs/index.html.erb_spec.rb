require 'rails_helper'

RSpec.describe "user_blogs/index", type: :view do
  before(:each) do
    assign(:user_blogs, [
      UserBlog.create!(
        title: "Title",
        author: "Author"
      ),
      UserBlog.create!(
        title: "Title",
        author: "Author"
      )
    ])
  end

  it "renders a list of user_blogs" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "Author".to_s, count: 2
  end
end
