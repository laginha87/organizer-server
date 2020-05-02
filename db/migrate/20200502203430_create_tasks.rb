class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.integer :priority
      t.integer :duration
      t.integer :dificulty
      t.integer :ickyness

      t.timestamps
    end
  end
end
