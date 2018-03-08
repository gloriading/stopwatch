class CreateLaps < ActiveRecord::Migration[5.1]
  def change
    create_table :laps do |t|
      t.string :lap_time
      t.references :record, foreign_key: true

      t.timestamps
    end
  end
end
