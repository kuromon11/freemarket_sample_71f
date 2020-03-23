class CreateBrands < ActiveRecord::Migration[5.2]
  def change
    create_table :brands do |t|
      t.references :category_id,null: false,FK: true
      t.references :brand_groups_id,null: false,FK: true
      t.string :name, null: false
      t.timestamps
    end
  end
end
