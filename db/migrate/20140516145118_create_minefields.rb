class CreateMinefields < ActiveRecord::Migration
  def change
    create_table :minefields do |t|
      t.string   :name
      t.string   :url
    end
  end
end
