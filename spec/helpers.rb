def sign_up
  visit 'users#index'
  click_link('Sign up')
  fill_in('Email', :with => '1@21.3.com')
  fill_in('Password', :with => '111111')
  fill_in('Password confirmation', :with => '111111')
  click_button('Sign up')
end

def sign_up_different_password_and_password_confirmation
  visit 'users#index'
  click_link('Sign up')
  fill_in('Email', :with => '1@222.3.com')
  fill_in('Password', :with => '111111')
  fill_in('Password confirmation', :with => '222222')
  click_button('Sign up')
end
