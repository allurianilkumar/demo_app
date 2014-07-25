class UsersAdminController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    
  end

  def create
    @user = User.new
    @user.first_name = params[:user][:first_name]
    @user.last_name = params[:user][:last_name]
    @user.institution = params[:user][:institution]
    @user.email = params[:user][:email]
    @user.password = params[:user][:password]
    
    if @user.save
      redirect_to users_admin_index_path
    else
      render 'new'
    end
  end
  
  def new
    @user= User.new
  end
  
  def edit
    @user = User.find(params[:id])
  end

  def update

    @user = User.find(params[:id])

    @user.first_name = params[:user][:first_name]
    @user.last_name = params[:user][:last_name]
    @user.institution = params[:user][:institution]
    @user.email = params[:user][:email]
    @user.password = params[:user][:password]
    @user.role = params[:user][:role]
    
    if @user.save
      redirect_to users_admin_index_path
    else
      render 'edit'
      #flash[:notice] = "You are signed up successfully"
    end
  end

  def destroy
      User.find(params[:id]).destroy
      redirect_to users_admin_index_path
  end
  
end
