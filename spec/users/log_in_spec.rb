require 'rails_helper'

feature 'Users' do
  scenario 'can log in' do
    visit 'users#index'
    save_and_open_page
    click_link('sign in')
    expect(page).to have_content('username')
  end
end
