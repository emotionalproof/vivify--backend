class AddColumnToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :complete, :boolean, :default => "false"
  end
end
