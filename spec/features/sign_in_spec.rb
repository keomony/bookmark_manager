
feature "Signing in" do
  scenario "when user visits bookmark manager for the first time." do
    visit '/'
    fill_in 'email', :with => 'keomony@gmail.com'
    fill_in 'password', :with => 'this is password'
    click_button 'Log in'

    expect(page.current_path).to eq '/links'
    expect(page).to have_content('Welcome to your bookmark manager!')
    expect(page).to have_content('keomony@gmail.com')
    # expect{user_count}.to change_by(1)
  end


end
