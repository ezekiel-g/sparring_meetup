require 'rails_helper'

feature 'user signs in', %Q{
  As a signed up user
  I want to sign in
  So that I can regain access to my account
} do
  scenario 'specify valid credentials' do
    user = FactoryBot.create(:user)

    visit new_user_session_path

    fill_in 'EMAIL:', with: user.email
    fill_in 'PASSWORD:', with: user.password

    click_button 'SIGN IN'

    expect(page).to have_content('Signed in successfully')
    expect(page).to have_content('SIGN OUT')
  end

  scenario 'specify invalid credentials' do
    visit new_user_session_path

    click_button 'SIGN IN'
    expect(page).to have_content('Invalid Email or password')
    expect(page).to_not have_content('SIGN OUT')
  end
end
