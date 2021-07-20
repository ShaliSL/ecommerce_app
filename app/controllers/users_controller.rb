class UsersController < ApplicationController
  def create
    usesr = User.new(user_params)
    flash[:success] = "Your account was successfully created!"
    redirect_to '/'
  end

  def user_params
    params.require(:users).permit(:name, :mblno, :email, :password)
  end
end
