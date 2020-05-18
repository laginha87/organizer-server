class AddDatesToProject < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :due_date, :datetime
    add_column :projects, :defer_date, :datetime
  end
end
