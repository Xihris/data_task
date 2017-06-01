class AuthorsController < ApplicationController
  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
    @author.save
    redirect_to authors_path
  end

  def show
    @author = Author.find(params[:id])
    @units = Unit.where("id_author = ""#{@author.id}")
    @users = User.all
  end

  
  def index
    @authors = Author.all
  end

  private
  def author_params
    params.require(:author).permit(:name, :phone, :department, :photo)
  end
end
