require 'rails_helper'

feature 'Users' do
  scenario 'can find the home page' do
    visit 'users#index'
    expect(page).to have_content('Welcome')
  end
end
