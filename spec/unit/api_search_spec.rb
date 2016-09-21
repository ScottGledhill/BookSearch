require 'rails_helper'

describe ApiSearch do
  subject(:search) {ApiSearch.new}
  it 'can make a call to google books api' do
    search.call {should include("History of Yolo County, California")}
  end
end
