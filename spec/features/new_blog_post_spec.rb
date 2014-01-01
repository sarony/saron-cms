require "spec_helper"

feature "new blog post" do
  given(:post) {FactoryGirl.create(:post)}

  scenario "creating a new blog post" do
    visit root_url
    click_link "New Post"

    visit new_post_url
    fill_in "Title", with: post.title
    fill_in "Subtitle", with: post.subtitle
    fill_in "Preview", with: post.preview
    fill_in "Body", with: post.body

    fill_in "Cover art", with: "cover_art.jpeg"

    click_button "Create Post"

    expect(page).to have_text(post.title)
  end
end