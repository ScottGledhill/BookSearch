require 'rails_helper'

feature 'Users' do
  scenario 'can find the home page' do
    visit 'users#index'
    expect(page).to have_content('You need to sign in')
  end

  scenario 'returns to home page once logged out' do
    sign_up
    click_link('Logout')
    expect(page).to have_content('You need to sign in')
  end
end
