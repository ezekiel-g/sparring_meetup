require 'rails_helper'

feature 'user creates proposal', %Q{
  As a signed-in user
  I want to create a proposal
  So that others can view it
} do

  scenario 'user creates proposal' do
    user = FactoryBot.create(:user)
    aikido = FactoryBot.create(:sport)

    visit new_user_session_path

    fill_in 'EMAIL:', with: user.email
    fill_in 'PASSWORD:', with: user.password

    click_button 'SIGN IN'

    expect(page).to have_content('Signed in successfully')

    visit new_proposal_path

    fill_in 'YOUR SPARRING PROPOSAL', with: 'This is a proposal.'
    select aikido.name, from: 'SPORT:'

    click_button 'CREATE'

    expect(page).to have_content('MAKE A PROPOSAL')
  end
end
