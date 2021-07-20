class SessionsController < ApplicationController
  def create
    users = User.find_by_email(params[:email])
    puts "User Details #{users}"
    if users && users.authenticate(params[:password])
      session[:users_id] = users.id
      flash[:success] = "Welcome back, #{users.name}!"
      redirect_to '/'
    end
  end
end
