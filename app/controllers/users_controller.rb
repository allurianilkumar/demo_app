class UsersController < ApplicationController
  def index
    @list = User.all
  end
  def create
    @user = User.new
    @user.first_name = params[:user][:first_name]
    @user.last_name = params[:user][:last_name]
    @user.institution = params[:user][:institution]
    @user.email = params[:user][:email]
    @user.password = params[:user][:password]
    if
      @user.save
      redirect_to users_admin_index_path
      flash[:notice] = "You are signed up successfully"
    end
  end
  # def show
  #   @user = User.find(params[:id])
    
  # end
  def new
     render sign_up_users_path
  end
  def update
  end
  def valid_user
    @temp_email = params[:user][:email]
    @temp_password = params[:user][:password]
    @check_email = User.find_by_email(@temp_email)
    @check_password = User.find_by_password(@temp_password)
    if @check_email.nil? or @check_password.nil?
      flash[:notice] = "Entered Email-Id/Password is Invalid"
      redirect_to sign_in_users_path
    else
      redirect_to users_admin_index_path
    end
  end
  def sign_in
  end
  def sign_up
  end
  def sign_out
     @user.email = nil
     @user.password = nil
     render :text => params.inspect and return 
  end
end
