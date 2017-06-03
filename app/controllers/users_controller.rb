class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @units = Unit.where("user_id = ""#{@user.id}")
  end

  def index
    @users = User.all
  end

  def update
  end
end
