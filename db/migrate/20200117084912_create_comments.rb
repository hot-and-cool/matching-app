class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :to_user_id
      t.integer :from_user_id
      t.text :text
      t.timestamps
    end
  end
end
