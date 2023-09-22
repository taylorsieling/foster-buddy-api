class CreateFosters < ActiveRecord::Migration[7.0]
  def change
    create_table :fosters do |t|
      t.string :name
      t.string :species
      t.string :sex
      t.date :date_of_birth
      t.string :breed
      t.string :primary_color
      t.string :secondary_color
      t.string :pattern
      t.string :altered_status
      t.string :adoption_status
      t.text :biography
      t.string :portrait_url
      t.belongs_to :litter, foreign_key: true
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
