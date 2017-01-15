class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.integer :product_id
      t.string :name
      t.string :description
      t.integer :del_flag

      t.timestamps
    end
  end
end
