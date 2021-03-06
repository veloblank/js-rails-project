class UsersController < ApplicationController
  layout "signup"

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.create_pick_history
    if @user.save
      login @user
      redirect_to root_path
    else
      render :new
    end
  end


  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
