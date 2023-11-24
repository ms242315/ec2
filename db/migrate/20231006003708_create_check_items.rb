class CreateCheckItems < ActiveRecord::Migration[6.1]
  def change
    create_table :check_items do |t|
      t.references :book, null: false, foreign_key: true
      t.references :favorite, null: false, foreign_key: true

      t.timestamps
    end
  end
end
