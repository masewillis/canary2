class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :cname
      t.string :name
      t.string :position
      t.string :title
      t.string :hashed_password
    end
  end
end
