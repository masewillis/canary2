class AddColumnTypeToMinefields < ActiveRecord::Migration
  def change
    add_column :minefields, :type, :string
  end
end
