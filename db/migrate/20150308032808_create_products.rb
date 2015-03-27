class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.belongs_to :category, index: true
      t.string :name
      t.text :description
      t.float :price
      t.string :image
      t.integer :category_id
      t.timestamps
    end
  end
end
