require 'rails_helper'

feature 'Users' do
  scenario 'can log in' do
    fill_in('Email', :with => '1@21.3.com')
    fill_in('Password', :with => '111111')
    save_and_open_page
  end
end
