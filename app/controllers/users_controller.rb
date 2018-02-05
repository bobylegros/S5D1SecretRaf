class UsersController < ApplicationController

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to @user
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def destroy

  end

  def index
    @users = User.all
  end

  def new
    @user = User.new
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
