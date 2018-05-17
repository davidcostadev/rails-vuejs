class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :description
      t.boolean :is_completed
      t.integer :user_id
      t.datetime :due_date

      t.timestamps
    end
  end
end
