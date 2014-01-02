require "spec_helper" 

feature "edit blog post" do
  given(:blog_post) {FactoryGirl.create(:blog_post)}

  before scenario do
    FactoryGirl.create(:blog_post)
  end

  scenario "get correct edit form" do
    visit posts_url
    click_link "Edit"

    visit edit_blog_post_url(blog_post.id)
    click_button "Update Post"
    expect(page).to have_text(blog_post.title)
  end

end