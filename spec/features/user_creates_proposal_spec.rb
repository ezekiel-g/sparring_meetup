require 'rails_helper'

feature 'user creates proposal', %Q{
  As a signed-in user
  I want to create a proposal
  So that others can view it
} do

  scenario 'user signs in' do
    user = FactoryBot.create(:user)

    visit new_user_session_path

    fill_in 'EMAIL:', with: user.email
    fill_in 'PASSWORD:', with: user.password

    click_button 'SIGN IN'

    expect(page).to have_content('Signed in successfully')
  end

  scenario 'user creates proposal' do
    visit new_proposal_path

    fill_in 'YOUR SPARRING PROPOSAL', with: 'This is a proposal.'
    select 'aikido', from: 'SPORTS:'

    click_button 'CREATE'

    expect(page).to have_content('Proposal created sucessfully')
  end
end
