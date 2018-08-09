require 'rails_helper'

feature 'user registers', %Q{
  As a visitor
  I want to register
  So that I can create an account
} do

  # Acceptance Criteria:
  # * I must specify a valid email address,
  #   password, and password confirmation
  # * If I don't specify the required information, I am presented with
  #   an error message

  scenario 'provide valid registration information' do
    visit new_user_registration_path

    fill_in 'USERNAME:', with: 'username'
    fill_in 'EMAIL:', with: 'john@example.com'
    fill_in 'PASSWORD:', with: 'password'
    fill_in 'PASSWORD CONFIRMATION:', with: 'password'
    fill_in 'AGE:', with: 23
    fill_in 'GENDER ("M" OR "F"):', with: 'M'
    fill_in 'HEIGHT IN INCHES:', with: 72
    fill_in 'WEIGHT IN POUNDS:', with: 180

    click_button 'SIGN UP'

    expect(page).to have_content('Welcome! You have signed up successfully.')
    expect(page).to have_content('SIGN OUT')
  end

  scenario 'provide invalid registration information' do
    visit new_user_registration_path

    click_button 'SIGN UP'
    expect(page).to have_content("can't be blank")
    expect(page).to_not have_content('SIGN OUT')
  end
end
