class CreateVariablecosts < ActiveRecord::Migration[6.0]
  def change
    create_table :variablecosts do |t|
      t.integer    :user_id
      t.string     :price     , null: false
      t.integer    :genre_id  , null: false
      t.date       :day       , null: false
      t.string     :memo
      t.timestamps
    end
  end
end
