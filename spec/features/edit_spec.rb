require "spec_helper"

feature "edit blog post" do
  given(:blog_post) {FactoryGirl.create(:blog_post)}

  before scenario do 
    FactoryGirl.create(:blog_post)
  end

  scenario "editing a blog posts' body" do
    visit posts_url
    click_link "Edit"

    visit edit_post_url(blog_post)
    fill_in "Body", with: "I've changed yo."

    click_button "Update Post"
    expect(page).to have_text("I've changed yo.")
  end
end