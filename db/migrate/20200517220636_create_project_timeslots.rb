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
      t.time :start_time
      t.time :end_time
      t.column :weekday, :weekday
      t.references :project, null: false, foreign_key: true, index: true
      t.timestamps
    end
  end
end
