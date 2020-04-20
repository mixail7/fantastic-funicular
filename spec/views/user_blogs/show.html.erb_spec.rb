require 'rails_helper'

RSpec.describe "user_blogs/show", type: :view do
  before(:each) do
    @user_blog = assign(:user_blog, UserBlog.create!(
      title: "Title",
      author: "Author"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Author/)
  end
end
