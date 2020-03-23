class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.references :path, null: false,FK: true
      t.references :name, null: false,FK: true
      t.string :ancestry
      t.timestamps
    end
    add_index :categories, :ancestry
  end
end
