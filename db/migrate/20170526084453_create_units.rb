class CreateUnits < ActiveRecord::Migration[5.1]
  def change
    create_table :units do |t|
      t.string :unit
      t.string :date_start
      t.date :date_end
      t.date :date_finish
      t.integer :author_id
      t.integer :user_id
      t.boolean :complete, default: false
      t.text :comment
      t.integer :sum_ur
      t.integer :sum_fiz
      t.integer :id_temp_task

      t.timestamps
    end
  end
end
