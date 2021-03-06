  class UsersController < ApplicationController
  before_action :require_signin, only: [:show, :index]
  before_action :require_correct_user, only: [:edit, :update]
  before_action :require_admin, only: [:new, :create, :destroy, :make_admin, :demote_admin]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user, notice: "Thanks for signing up!"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to @user, notice: "Account updated."
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
    session[:user_id] = nil
    redirect_to users_url, notice: "Account Deleted"
  end

  def make_admin
    @user = User.find(params[:id])
    @user.admin = true
    @user.save
    redirect_to users_path
  end

  def demote_admin
    @user = User.find(params[:id])
    @user.admin = false
    @user.save
    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :phone, :job_title)
  end

  def require_correct_user
    @user = User.find(params[:id])
    unless current_user?(@user)
      redirect_to root_url, alert: "You can't do that"
    end
  end

end
