class UsersController < ApplicationController
  def create
    user = User.new
    flash[:success] = "Your account was successfully created!"
    redirect_to '/'
  end
  def new
  end
end
