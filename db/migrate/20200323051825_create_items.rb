class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.references :category          
      t.references :brand              
      t.references :user,              null: false  
      t.string     :name,              null: false
      t.text       :i_text,            null: false
      t.integer    :condition_id,      null: false
      t.integer    :price,             null: false
      t.integer    :trading_status    
      t.datetime   :completed_at
      t.string     :size
      t.timestamps
    end
  end
end
