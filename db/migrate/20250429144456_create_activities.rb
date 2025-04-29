class CreateActivities < ActiveRecord::Migration[7.1]
  def change
    create_table :activities do |t|
      t.integer "Salesperson_ID"
      t.integer "Contact_ID"
      t.string "Note"

      t.timestamps
    end
  end
end
