class AddDefaultValueToTask < ActiveRecord::Migration[5.2]
  def change
    change_column :tasks, :completed, :integer, :default => false
  end
end
