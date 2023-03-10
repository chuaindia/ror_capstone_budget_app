class CreateTransracts < ActiveRecord::Migration[7.0]
  def change
    create_table :transracts do |t|
      t.string :name
      t.float :amount
      t.references :author, references: :authors, null: false, foreign_key: { to_table: :users}

      t.timestamps
    end
  end
end
