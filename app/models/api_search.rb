class ApiSearch < ApplicationRecord

  def call(params)
    @params = params[:q]
  end

  def titles
    p @titles = JSON.parse(search_result)["items"].collect { |item| item["volumeInfo"]["title"] }
  end

  def authors
    @authors = JSON.parse(search_result)["items"].collect { |item| item["volumeInfo"]["authors"] }
  end

  def descriptions
    @descriptions = JSON.parse(search_result)["items"].collect { |item| item["volumeInfo"]["description"] }
  end

  def search_result
    @search_result = RestClient.get("https://www.googleapis.com/books/v1/volumes?q=#{@params}&key=#{ENV['api_key']}")
  end
end
