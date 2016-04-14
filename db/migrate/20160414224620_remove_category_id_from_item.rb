class RemoveCategoryIdFromItem < ActiveRecord::Migration
  def change
    remove_column :items, :category_id, :integer
  end
end
