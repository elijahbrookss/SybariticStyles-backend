class CreateCarts < ActiveRecord::Migration[6.0]
  def change
    create_table :carts do |t|
      t.references :user, null: false, foreign_key: true
      t.bigint :merchandise_id, null: false
      t.timestamps
    end
  end
end
