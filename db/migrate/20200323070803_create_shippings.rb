class CreateShippings < ActiveRecord::Migration[5.2]
  def change
    create_table :shippings do |t|
      t.references :item,       null: false, foreign_key: true
      t.boolean :fee_burgen,    null: false, foreign_key: true
      t.integer :service,       null: false
      t.string :area,           null: false
      t.integer :handling_time, null: false
      t.timestamps
    end
  end
end
