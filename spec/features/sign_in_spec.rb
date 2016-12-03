feature "Signing in" do
  scenario "when user visits bookmark manager for the first time." do
    log_in
    expect{log_in}.to change{User.count}.by 1
    expect(page.current_path).to eq '/links'
    expect(page).to have_content('Welcome to your bookmark manager!')
    expect(page).to have_content('keomony@gmail.com')
  end


end
