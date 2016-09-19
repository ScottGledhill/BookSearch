require 'rails_helper'

feature 'Users' do
  scenario 'can sign up' do
    visit 'users#index'
    click_link('Sign up')
    fill_in('Email', :with => '1@2.3.com')
    fill_in('Password', :with => '111111')
    fill_in('Password confirmation', :with => '111111')
    click_button('Sign up')
    expect(page).to have_content('You have signed up successfully')
  end

  scenario 'can not sign up with same username' do
    visit 'users#index'
    click_link('Sign up')
    fill_in('Email', :with => '1@2.3.com')
    fill_in('Password', :with => '111111')
    fill_in('Password confirmation', :with => '111111')
    click_button('Sign up')
    expect(page).to have_content('Email has already been taken')
  end

  scenario 'can not sign up with password/password confirmation different' do
    visit 'users#index'
    click_link('Sign up')
    fill_in('Email', :with => '1@222.3.com')
    fill_in('Password', :with => '111111')
    fill_in('Password confirmation', :with => '222222')
    click_button('Sign up')
    expect(page).to have_content(' Password confirmation doesn\'t match Password')
  end
end
