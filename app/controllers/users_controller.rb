class UsersController < ApplicationController
  def index
    if params.include?(:q)
      api_search
      render :logged_in
    else
      render :index
    end
  end

  def api_search
    @api = ApiSearch.new
    @api.call(params)
  end
end
