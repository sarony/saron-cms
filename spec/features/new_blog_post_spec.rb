require "spec_helper"

feature "new blog post" do
  given(:blog_post) {FactoryGirl.create(:blog_post)}

  scenario "creating a new blog post" do
    visit posts_url
    click_link "New Blog Post"

    visit "/posts/new?post_type=BlogPost"
    fill_in "Title", with: blog_post.title
    fill_in "Subtitle", with: blog_post.subtitle
    fill_in "Preview", with: blog_post.preview
    fill_in "Body", with: blog_post.body
    fill_in "Cover art", with: blog_post.cover_art

    click_button "Create Post"
    expect(page).to have_text(blog_post.body)
  end
end




