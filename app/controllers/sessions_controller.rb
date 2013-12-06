class SessionsController < ApplicationController
  before_filter :require_current_user!, :only => [:destroy]
  
  def new
    render :new
  end
  
  def create
    user = User.find_by_email(params[:user][:email])
    
    if user.nil?
      flash[:danger] = ["Couldn't find this user"]
    else
      self.current_user = user
      flash[:success] = ["Successfully logged in as " + user.name]
      redirect_to users_url
    end
  end
  
  def destroy
    logout_current_user!
    flash[:success] = ["Successfully logged out!"]
    redirect_to root_url
  end
end
