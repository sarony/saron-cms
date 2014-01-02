require "spec_helper"

feature "new blog post" do
  given(:blog_post) {FactoryGirl.create(:blog_post)}

  scenario "creating a new blog post" do
    visit home_url
    click_link "New Blog Post"

    visit new_blog_post_url
    fill_in "Title", with: blog_post.title
    fill_in "Subtitle", with: blog_post.subtitle
    fill_in "Preview", with: blog_post.preview
    fill_in "Body", with: blog_post.body

    fill_in "Cover art", with: "cover_art.jpeg"

    click_button "Create Post"
    expect(page).to have_text(blog_post.title)
  end
end




