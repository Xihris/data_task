class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @units = Unit.where(user_id: params[:id], complete: false)
  end

  def index
  end

  def update
  end
end
