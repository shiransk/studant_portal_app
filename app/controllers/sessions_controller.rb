class SessionsController < ApplicationController

  def new
    render 'new.html.erb'
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenicate(params[:password])
      session[:user_id] = user.id
      flash[:success] = 'Success! You logined in! My Wu-Tang look kindly on you.'
      redirect_to '/'
    else
      flash[:warning] = 'Invalid credentials'
      redirect_to '/login'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = 'You have logged out. May Wu-Tang be with you.'
    redirect_to '/login'
  end
end
