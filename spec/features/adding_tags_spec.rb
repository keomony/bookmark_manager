RSpec.feature "Adding tags to the bookmark manager" do
  scenario "Adding a tag and viewing it in the list of bookmarks" do
    log_in
    add_link_with_tag
    expect(page).to have_content("Tags: Beauty")
  end
  scenario "adding more than one tag" do
    log_in
    visit '/links/new'
    fill_in "title", with: "Youtube"
    fill_in "url", with: "youtube.com"
    fill_in "tags", with: "videos cats"
    click_button "Submit"
    visit '/tags/videos'
      expect(page).to have_content("Youtube")
    visit '/tags/cats'
      expect(page).to have_content("Youtube")
  end
end
