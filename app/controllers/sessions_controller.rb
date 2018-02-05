class SessionsController < ApplicationController
  def new
    @session = Session.new
  end

  def create
    @session = Session.new(session_params)

    if @session.save
      redirect_to @session
    else
      render 'new'
    end
  end

  def destroy

  end

  def log

  end


  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
