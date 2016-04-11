class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.boolean :item_id
      t.string :item_name
      t.integer :quantity
      t.string :season
      t.integer :case_price
      t.integer :unit_price
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
