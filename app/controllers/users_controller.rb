class UsersController < ApplicationController
  # before_filter :require_current_user!
  # before_filter :require_manager, :only => [:create, :update, :destroy]
  
  def index
    @users = User.all
    render :index
  end
  
  def new
    @user = User.new
    render :new
  end
  
  def create
    @user = User.new(params[:user])

    if @user.save
      flash[:success] = ["Hurray! You've successfully created a staff member!"]
      redirect_to user_url(current_user)
    else
      flash[:danger] = @user.errors.full_messages
      redirect_to root_url
    end
  end
  
  def edit
    @user = User.find(params[:id])
    render :edit
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      flash[:success] = ["You've successfully updated your staff member!"]
      redirect_to user_url(current_user)
    else
      flash[:danger] = @user.errors.full_messages
      render :edit
    end
  end
  
  def show
    if params.include?(:id)
      @user = User.find(params[:id])
    end
    render :show
  end
  
  def destroy
    user = User.find(params[:id])
    user.destroy
    flash[:success] = ["You've successfully deleted one of your staff members!"]
    redirect_to user_url(current_user)
  end
end
