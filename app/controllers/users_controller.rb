class UsersController < ApplicationController
  def show
  end

  def index
    @users = User.all
  end

  def update
  end
end