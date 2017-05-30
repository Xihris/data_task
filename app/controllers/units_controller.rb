class UnitsController < ApplicationController
  def new
    @temps = TempTask.last
    a = JSON.parse(@temps.to_json).to_a.shift(6)
    a[1][1].split(/; /).map{|item| Unit.create(
    {'unit': item, 'id_temp_task': a[0][1], 'date_start': a[2][1], 'date_end': a[3][1],
    'id_author': a[4][1] }
    )}
    @temps.destroy
    redirect_to units_path
  end

  def show
    @unit = Unit.find params[:id]
    @authors = Author.all
  end

  def index
    @units = Unit.order(:date_end)
    # @eaus = EauTask.order(:date_end).where("id_task_temp = '1'")
    # @eaus = EauTask.order(:date_end).where("author_id = '2'")
    @authors = Author.all
    @users = User.all
    # @temps = TasksTemp.all
  end

  def update
  end
end
