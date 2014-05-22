class AddSaltPasswordToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :salt_password, :string
  end
end
