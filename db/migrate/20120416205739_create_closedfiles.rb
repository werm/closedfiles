class CreateClosedfiles < ActiveRecord::Migration
  def change
    create_table :closedfiles do |t|
      t.string :file_number
      t.integer :wallet_qty
      t.string :client_name
      t.string :matter_name
      t.string :cm_number
      t.string :atty_name
      t.integer :destruction_date
      t.boolean :scaned

      t.timestamps
    end
  end
end
