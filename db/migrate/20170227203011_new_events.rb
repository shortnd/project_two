class NewEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
    t.integer :event
    t.string :location
    t.string :date
  end
  end
end
