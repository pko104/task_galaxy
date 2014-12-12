class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name, null: false
      t.string :description
      t.integer :due_date
      t.integer :project_id, null: false
      t.integer :user_id, null: false
    end
  end
end
