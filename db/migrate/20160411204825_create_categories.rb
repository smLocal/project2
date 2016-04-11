class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.integer :category_id
      t.string :category_name

      t.timestamps null: false
    end
  end
end
