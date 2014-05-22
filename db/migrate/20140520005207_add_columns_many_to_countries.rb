class AddColumnsManyToCountries < ActiveRecord::Migration
  def change
    add_column :countries, :total_oil, :integer
    add_column :countries, :oil_export, :integer
    add_column :countries, :refinery, :integer
    add_column :countries, :reserves, :integer
    add_column :countries, :corruption, :integer
    add_column :countries, :description, :string
    add_column :countries, :minerals, :string
  end
end
