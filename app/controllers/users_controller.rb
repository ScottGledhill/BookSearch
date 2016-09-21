class UsersController < ApplicationController
  def index
    @params = 'Harry+Potter'
    render :index
  end

  def show
    render :logged_in
  end

  def api_search
    p ApiSearch.call
  end
end
