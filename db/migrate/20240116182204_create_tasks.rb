class CreateTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :tasks do |t|
      t.string :description
      t.boolean :done
      t.references :project, index: true

      t.timestamps
    end
    add_index :tasks, [:description, :project_id], unique: true
  end
end
