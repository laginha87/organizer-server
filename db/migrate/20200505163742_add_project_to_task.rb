class AddProjectToTask < ActiveRecord::Migration[6.0]
  def change
    add_reference :tasks, :project, null: true, foreign_key: true
  end
end
