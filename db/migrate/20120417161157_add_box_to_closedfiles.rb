class AddBoxToClosedfiles < ActiveRecord::Migration
  def change
    add_column :closedfiles, :box_number, :string
  end
end
