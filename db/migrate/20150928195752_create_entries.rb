class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.integer :minutes
      t.float :rate
      t.references :client, index: true, foreign_key: true
      t.references :company, index: true, foreign_key: true
      t.references :employee, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
