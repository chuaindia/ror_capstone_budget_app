class CreateTransractGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :transract_groups do |t|
      t.references :transract, null: false, foreign_key: true
      t.references :group, null: false, foreign_key: true

      t.timestamps
    end
  end
end
