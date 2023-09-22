class CreateAlterationRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :alteration_records do |t|
      t.string :type
      t.date :date
      t.string :clinic
      t.string :veterinarian
      t.boolean :altered_in_care
      t.belongs_to :foster, foreign_key: true

      t.timestamps
    end
  end
end
