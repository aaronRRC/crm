class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.integer :phone
      t.string :email
      t.string :image
      t.text :notes

      t.timestamps null: false
    end
  end
end
