def add_link_with_tag
    visit '/links/new'
    fill_in "title", with: "Youtube"
    fill_in "url", with: "youtube.com"
    fill_in "tags", with: "Beauty"
    click_button("Submit")
end

def log_in
    visit '/'
    fill_in 'email', :with => 'keomony@gmail.com'
    fill_in 'password', :with => 'this is password'
    click_button 'Log in'
end
