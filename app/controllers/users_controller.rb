class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to @user
    else
      render 'new'
    end
  end

  def home

  end
  
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def reponse

  end

  def update

  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
