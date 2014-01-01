require "spec_helper"

feature "new blog post" do
  scenario "creating a new blog post" do
    visit root_url
    click_link "New Post"

    visit new_post_url

    expect(page).to have_text("Your New Post!")
  end
end