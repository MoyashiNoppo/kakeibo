class CreateFixedcosts < ActiveRecord::Migration[6.0]
  def change
    create_table :fixedcosts do |t|
      t.string     :price     , null: false
      t.integer    :genre_id  , null: false
      t.integer    :user_id
      t.string     :memo
      t.timestamps
    end
  end
end
