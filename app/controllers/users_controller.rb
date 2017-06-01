class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @units = Unit.where("id_user = ""#{@user.id}")
    @authors = Author.all
  end

  def index
    @users = User.all
  end

  def update
  end
end
