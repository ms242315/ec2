class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :product_id
      t.integer :count
      t.text :address

      t.timestamps
    end
  end
end
