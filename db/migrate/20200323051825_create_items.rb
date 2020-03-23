class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.references :category,          null: false
      t.references :shipping,          null: false
      t.references :brand,             null: false 
      t.references :user,              null: false  
      t.string     :name,              null: false
      t.text       :i_text,            null: false
      t.integer    :condition,         null: false
      t.integer    :price,             null: false
      t.integer    :trading_status,    null: false
      t.datetime   :completed_at
      t.string     :size
      t.timestamps
    end
  end
end
