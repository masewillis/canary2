class AddColumnCountryIdToMinefields < ActiveRecord::Migration
  def change
    add_column :minefields, :country_id, :integer
  end
end
