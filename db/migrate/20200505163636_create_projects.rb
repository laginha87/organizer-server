class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.column :default_priority, :task_priority
      t.column :default_duration, :task_duration
      t.column :default_dificulty, :task_dificulty
      t.column :default_ickyness, :task_ickyness
      t.timestamps
    end
  end
end
