class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.integer   :company_id
      t.integer   :project_id
      t.string    :title
      t.text      :description

    end
  end
end
