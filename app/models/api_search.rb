class ApiSearch < ApplicationRecord

  def call
    @params = 'yolo'
    p RestClient.get("https://www.googleapis.com/books/v1/volumes?q=#{@params}&key=#{ENV['api_key']}")
  end
end
