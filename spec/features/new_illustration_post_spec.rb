require "spec_helper"

feature "new illustration post" do
  given(:illustration) {FactoryGirl.create(:illustration)}

  scenario "creating a new blog post" do
    visit posts_url
    click_link "New Illustration"

    visit "/posts/new?post_type=Illustration"
    fill_in "Title", with: illustration.title
    fill_in "Subtitle", with: illustration.subtitle
    fill_in "Image", with: illustration.image
    fill_in "Cover art", with: illustration.cover_art

    click_button "Create Post"
    expect(page).to have_text(illustration.image)
  end
end
