class RemoveCategoryIdFromItems < ActiveRecord::Migration[5.2]
  def up
    remove_column :items, :category_id
  end

  def down
    add_reference :items, :category, index: true
  end
end
