class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string    :name
      t.integer   :company_id
      t.integer   :country_id
      t.integer   :minefield_id
      t.text      :description
    end
  end
end
