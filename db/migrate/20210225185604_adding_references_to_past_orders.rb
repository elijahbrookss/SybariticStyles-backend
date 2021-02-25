class AddingReferencesToPastOrders < ActiveRecord::Migration[6.0]
  def change
    remove_column :past_orders, :time, :datetime
    remove_column :past_orders, :name, :text

    add_column :past_orders, :title, :text
    add_column :past_orders, :merchandise_id, :bigint, null: false
  end
end
