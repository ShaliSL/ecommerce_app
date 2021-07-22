class SessionsController < ApplicationController
  def create
    users = User.find_by_email(params[:email])
    puts 'Session list'
    puts params[:email]
    if users 
      session[:users_id] = users.id
      flash[:success] = "Welcome back, #{users.name}!"
      redirect_to '/'
    else
      flash[:danger] = "We couldn't log you in. Please verify that your email/password is correct."
      redirect_to '/login'
    end
  end 
 
end


