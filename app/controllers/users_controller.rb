class UsersController < ApplicationController
  def index
    @users = User.order(:name)
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save(validate: false)
      redirect_to @user
    else
      render 'Error'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end

end
