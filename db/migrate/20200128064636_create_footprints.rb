class CreateFootprints < ActiveRecord::Migration[5.2]
  def change
    create_table :footprints do |t|
      t.string :visiter_id
      t.string :visited_id
      t.timestamps
    end
    # indexを貼って検索しやすくする
    add_index :footprints, :visiter_id
    add_index :footprints, :visited_id
    # 自分自身に足跡がつかないように一意性をもたせる
    add_index :footprints, [:visiter_id, :visited_id], unique: true
  end
end
