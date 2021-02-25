class CreateMerchandises < ActiveRecord::Migration[6.0]
  def change
    create_table :merchandises do |t|
      t.text :description
      t.string :img_url
      t.references :past_order, null: false, foreign_key: true
      t.timestamps
    end
  end
end
