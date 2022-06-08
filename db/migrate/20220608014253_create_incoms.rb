class CreateIncoms < ActiveRecord::Migration[6.0]
  def change
    create_table :incoms do |t|
      t.integer   :user_id
      t.date      :day       , null: false
      t.string    :salary   ,null: false
      t.string    :other
      t.string    :memo
      t.timestamps
    end
  end
end
