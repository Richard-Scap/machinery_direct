class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :brand
      t.string :model
      t.string :year
      t.string :condition
      t.float :price
      t.timestamps
    end
  end
end
