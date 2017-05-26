class CreateTempTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :temp_tasks do |t|
      t.text :companys
      t.date :date_start
      t.date :date_end
      t.integer :id_author

      t.timestamps
    end
  end
end
