class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :title
      t.string :description
      t.string :location
      t.integer :duration
      t.datetime :start_time
      t.integer :number_of_participants
      t.references :sport, null: false, foreign_key: true

      t.timestamps
    end
  end
end
