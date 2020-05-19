class CreateProjectTimeslots < ActiveRecord::Migration[6.0]
  def change
    reversible do |dir|
      dir.up {
        execute <<-SQL
          CREATE TYPE weekday as ENUM ('monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday', 'sunday');
        SQL
      }
    end
    create_table :project_timeslots do |t|
      t.integer :start_time, limit: 2
      t.integer :end_time, limit: 2
      t.column :weekday, :weekday
      t.references :project, null: false, foreign_key: true, index: true
      t.timestamps
    end
  end
end
