class RenameHeightColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :height, :height_id
    rename_column :users, :jobs, :job_id
  end
end
