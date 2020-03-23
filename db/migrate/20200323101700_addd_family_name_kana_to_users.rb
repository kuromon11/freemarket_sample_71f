class AdddFamilyNameKanaToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :d_family_name_kana, :string ,null:false

  end
end
