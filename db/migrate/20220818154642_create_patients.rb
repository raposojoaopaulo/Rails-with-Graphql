class CreatePatients < ActiveRecord::Migration[7.0]
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :number
      t.string :city
      t.string :zipcode

      t.timestamps
    end
  end
end
