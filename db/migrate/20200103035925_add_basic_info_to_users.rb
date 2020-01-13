class AddBasicInfoToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :birthday, :date
    add_column :users, :blood_type_id, :integer
    add_column :users, :jobs, :string
    add_column :users, :education_id, :integer
    add_column :users, :income, :integer
    add_column :users, :height, :string
    add_column :users, :body_id, :integer

  end
end
