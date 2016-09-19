require 'rails_helper'

feature 'Users' do
  scenario 'can find the home page' do
    visit 'users#index'
    expect(page).to have_content('You need to sign in')
  end
end
