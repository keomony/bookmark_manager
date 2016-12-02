
RSpec.feature "Adding favourite website to list of bookmarks" do
  scenario "Add site address and title to my bookmark manager" do
    log_in
    visit '/links/new'
    fill_in "title", with: "Youtube"
    fill_in "url", with: "youtube.com"
    click_button('Submit')
    within 'ul#links' do
      expect(page).to have_content("Youtube")
    end
  end
end
