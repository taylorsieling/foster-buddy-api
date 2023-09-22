class CreateMicrochipRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :microchip_records do |t|
      t.integer :chip_number
      t.date :date_placed
      t.string :brand
      t.string :placed_by
      t.boolean :placed_in_care
      t.belongs_to :foster, foreign_key: true

      t.timestamps
    end
  end
end
