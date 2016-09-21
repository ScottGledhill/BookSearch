class UsersController < ApplicationController
  def index
    render :index
  end

  def show
    render :logged_in
  end

  def api_search
    p ApiSearch.call
  end
end
