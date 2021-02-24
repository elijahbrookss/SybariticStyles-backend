class CreatePastOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :past_orders do |t|
      t.datetime :time
      t.text :name
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
