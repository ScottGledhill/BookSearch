class ApiSearch < ApplicationRecord

  def call(params)
     @params = params[:q]
     search_result
  end

  def search_result
    @search_result = RestClient.get("https://www.googleapis.com/books/v1/volumes?q=#{@params}&key=#{ENV['api_key']}")
  end
end
