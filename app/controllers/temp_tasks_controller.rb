class TempTasksController < ApplicationController
  def new
    @temp = TempTask.new
    @authors = Author.all
  end

  def create
    @temp = TempTask.new(temp_params)
    @temp.save
    redirect_to new_unit_path
  end
  
  private
  def temp_params
    params.require(:temp_task).permit(:companys, :date_start, :date_end, :author_id)
  end
  
end
