
RSpec.feature "Filtering tags" do

  scenario "Will see a link tagged with bubbles" do
    log_in
    add_link_with_tag
    visit '/links/new'
    fill_in "title", with: "Bubble Bath"
    fill_in "url", with: "bubbly.com"
    fill_in "tags", with: "bubbles"
    click_button "Submit"
    visit '/links/new'
    fill_in "title", with: "Big Bubble"
    fill_in "url", with: "bigbubble.com"
    fill_in "tags", with: "bubbles"
    click_button "Submit"
    visit '/tags/bubbles'
    expect(page).to have_content("Bubble Bath")
    expect(page).to_not have_content("YouTube")
  end


end
