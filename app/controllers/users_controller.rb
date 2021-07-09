class UsersController < ApplicationController
  def create
    user = User.new(user_params)
    flash[:success] = "Your account was successfully created!"
    redirect_to '/'
  end

  def user_params
    params.require(:user).permit(:name, :mblno, :email, :password)
  end
end
