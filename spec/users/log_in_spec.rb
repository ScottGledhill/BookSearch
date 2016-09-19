require 'rails_helper'

feature 'Users' do
  scenario 'can log in' do
    visit 'users#index'
    click_link('log in')
    expect(page).to have_content('username')
  end
end
