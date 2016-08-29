class CreateBids < ActiveRecord::Migration[5.0]
  def change
    create_table :bids do |t|
      t.float :bid_price
      t.boolean :accepted
      t.timestamps
    end
  end
end
