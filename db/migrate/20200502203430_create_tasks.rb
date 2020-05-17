class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    reversible do |dir|
      dir.up {
        execute <<-SQL
          CREATE TYPE task_priority as ENUM ('low', 'medium', 'high');
          CREATE TYPE task_duration as ENUM ('short', 'normal', 'long');
          CREATE TYPE task_dificulty as ENUM ('easy', 'medium', 'hard');
          CREATE TYPE task_ickyness as ENUM ('chicken', 'tepid', 'frog');
        SQL
      }
    end
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.column :priority, :task_priority
      t.column :duration, :task_duration
      t.column :dificulty, :task_dificulty
      t.column :ickyness, :task_ickyness

      t.timestamps
    end
  end
end
