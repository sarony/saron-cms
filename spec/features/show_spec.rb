require "spec_helper"

feature "edit blog post" do
  given(:blog_post) {FactoryGirl.create(:blog_post)}

  before scenario do 
    FactoryGirl.create(:blog_post)
  end

  scenario "show correct blog_post" do
    visit posts_url
    click_button "Show"

    visit post_path(blog_post)
    expect(page).to have_text("Halfway")
  end

end