require 'rails_helper'

describe User do
  it 'can find the home page'
  visit '/'
  expect(page.should have_content("Welcome to BookSearch"))
end
