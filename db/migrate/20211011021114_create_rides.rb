class CreateRides < ActiveRecord::Migration[6.1]
  def change
    create_table :rides do |t|
      t.string :source_latitude
      t.string :source_longitude
      t.string :target_latitude
      t.string :target_longitude

      t.timestamps
    end
  end
end
