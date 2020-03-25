class CreateShippings < ActiveRecord::Migration[5.2]
  def change
    create_table :shippings do |t|
      t.references :item,          null: false, foreign_key: true
      t.integer :fee_burgen_id,    null: false
      t.integer :service_id,       null: false
      t.string :area_id,           null: false
      t.integer :handling_time_id, null: false
      t.timestamps
    end
  end
end
