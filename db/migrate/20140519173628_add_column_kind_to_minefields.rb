class AddColumnKindToMinefields < ActiveRecord::Migration
  def change
    add_column :minefields, :kind, :string
  end
end
