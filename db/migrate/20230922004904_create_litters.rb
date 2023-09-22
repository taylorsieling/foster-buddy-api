class CreateLitters < ActiveRecord::Migration[7.0]
  def change
    create_table :litters do |t|
      t.string :theme
      t.datetime :intake_date
      t.datetime :intake_time
      t.string :intake_type
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
