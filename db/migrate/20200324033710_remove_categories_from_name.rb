class RemoveCategoriesFromName < ActiveRecord::Migration[5.2]
  def change
    remove_reference :categories, :name
    remove_reference :categories, :path
  end
end
