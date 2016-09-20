class UsersController < ApplicationController
  def index
    render :index
  end

  def show
    render :logged_in
  end

  def delete
    redirect('users/sign_in')
  end
end
