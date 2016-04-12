class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string  :name
      t.integer :quantity
      t.integer :case_price
      t.integer :unit_price
      t.integer :category_id
      t.string  :type

      t.timestamps null: false
    end
  end
end
