require 'rails_helper'

feature 'Users' do
  scenario 'can log in' do
    sign_up_new_account
    click_link('Logout')
    fill_in('Email', :with => '1@22221.3.com')
    fill_in('Password', :with => '111111')
    click_button('Log in')
    expect(page).to have_content('Signed in successfully')
  end
end
