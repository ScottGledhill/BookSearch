require 'rails_helper'

feature 'Users' do
  scenario 'can sign up' do
    sign_up
    expect(page).to have_content('You have signed up successfully')
  end

  scenario 'can not sign up with same username' do
    sign_up
    expect(page).to have_content('Email has already been taken')
  end

  scenario 'can not sign up with password/password confirmation different' do
    sign_up_different_password_and_password_confirmation
    expect(page).to have_content(' Password confirmation doesn\'t match Password')
  end
end
