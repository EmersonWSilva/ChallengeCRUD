class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :zip
      t.string :address_line1
      t.string :address_line2
      t.string :district
      t.string :city
      t.string :state
      t.integer :ibge
      t.references :citizen, null: false, foreign_key: true

      t.timestamps
    end
  end
end
