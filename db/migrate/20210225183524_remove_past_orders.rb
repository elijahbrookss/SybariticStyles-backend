class RemovePastOrders < ActiveRecord::Migration[6.0]
  def change
    remove_column :merchandises, :past_order_id, :bigint
  end
end
