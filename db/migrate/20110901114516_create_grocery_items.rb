class CreateGroceryItems < ActiveRecord::Migration
  def change
    create_table :grocery_items do |t|
      t.integer :list_id
      t.string :name
      t.string :quantity
      t.boolean :bought

      t.timestamps
    end
  end
end
