class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :contact
      t.string :phone
      t.string :email
      t.string :website
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :province
      t.string :postal_code
      t.has_many :employees
      t.has_many :projects
      t.has_many :clients
      t.has_many :categories

      t.timestamps null: false
    end
  end
end
