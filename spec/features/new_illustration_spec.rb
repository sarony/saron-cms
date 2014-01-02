require "spec_helper"

feature "new illustration" do
  given(:illustration) {FactoryGirl.create(:illustration)}

  scenario "creating a new illustration post" do
    visit home_url
    click_link "New Illustration"

    visit new_illustration_url
    fill_in "Title", with: illustration.title
    fill_in "Subtitle", with: illustration.subtitle
    fill_in "Cover art", with: illustration.cover_art
    fill_in "Image", with: illustration.image

    click_button "Create Post"
    expect(page).to have_text(illustration.title)
  end
end
