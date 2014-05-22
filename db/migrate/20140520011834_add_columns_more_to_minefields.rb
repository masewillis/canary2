class AddColumnsMoreToMinefields < ActiveRecord::Migration
  def change
    add_column :minefields, :output, :integer
    add_column :minefields, :description, :string
    add_column :minefields, :oil_reserves, :string
  end
end
