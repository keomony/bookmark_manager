def add_link_with_tag
  visit '/links/new'
  fill_in "title", with: "Youtube"
  fill_in "url", with: "youtube.com"
  fill_in "tags", with: "Beauty"
  click_button("Submit")
end
