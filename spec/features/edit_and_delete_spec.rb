require "spec_helper"

feature "edit blog post" do
  given(:blog_post) {FactoryGirl.create(:blog_post)}

  before scenario do 
    FactoryGirl.create(:blog_post)
  end

  scenario "make sure blogs show up" do
    visit posts_url
    expect(page).to have_text("Halfway")
  end

  scenario "editing a blog posts' body" do
    visit posts_url
    click_button "Edit"

    visit edit_post_url(blog_post)
    fill_in "Body", with: "I've changed yo."

    click_button "Update Post"
    expect(page).to have_text("I've changed yo.")
  end

  scenario "delete blog post" do
    visit posts_url
    click_button "Delete"

    visit posts_url
    expect(page).to have_no_text("Halfway")
  end
end

feature "edit illustration" do
  given(:illustration) {FactoryGirl.create(:illustration)}

  before scenario do
    FactoryGirl.create(:illustration)
  end

  scenario "editing an illustration's image" do
    visit posts_url
    click_button "Edit"

    visit edit_post_url(illustration)
    fill_in "Image", with: "new-image.jpeg"

    click_button "Update Post"
    expect(page).to have_text("new-image.jpeg")

  end

end