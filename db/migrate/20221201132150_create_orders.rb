class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :number
      t.integer :price
      t.string :place
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
