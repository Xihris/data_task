class CreateTempTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :temp_tasks do |t|
      t.text :companys
      t.date :date_start
      t.date :date_end
      t.integer :author_id

      t.timestamps
    end
  end
end
