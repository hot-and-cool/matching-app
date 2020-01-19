class RenameIncomeColumnToUser < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :income, :income_id
  end
end
