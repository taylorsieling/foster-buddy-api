class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.string :name
      t.string :street_one
      t.string :street_two
      t.string :city
      t.string :state
      t.integer :zip_code
      t.belongs_to :litter, foreign_key: true
      t.belongs_to :foster, foreign_key: true

      t.timestamps
    end
  end
end
