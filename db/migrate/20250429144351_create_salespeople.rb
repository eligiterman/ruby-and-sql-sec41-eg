class CreateSalespeople < ActiveRecord::Migration[7.1]
  def change
    create_table :salespeople do |t|
      t.string "First_Name"
      t.string "Last_Name"
      t.string "Email"
      
      t.timestamps
    end
  end
end
