class AddColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :family_name_kana, :string ,null:false
    add_column :users, :d_family_name, :string ,null:false
    add_column :users, :d_first_name, :string ,null:false   
    add_column :users, :d_first_name_kana, :string ,null:false 
    add_column :users, :zip_code, :integer ,null:false      
    add_column :users, :prefecture, :string ,null:false
    add_column :users, :city, :string ,null:false
    add_column :users, :address, :string ,null:false
    add_column :users, :apartment, :string
    add_column :users, :telephone, :string 
  end
end
