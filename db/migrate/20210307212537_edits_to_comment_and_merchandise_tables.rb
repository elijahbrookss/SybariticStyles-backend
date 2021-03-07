class EditsToCommentAndMerchandiseTables < ActiveRecord::Migration[6.0]
  def change
    remove_column :comments, :content, :string
    add_column :comments, :content, :text

    add_column :merchandises, :name, :string
  end
end
