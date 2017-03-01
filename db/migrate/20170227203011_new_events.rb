class NewEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
    t.string :season
    t.string :location
    t.string :date
    t.string :about
    t.string :night_one_events
    t.string :day_two_events
    t.string :night_two_events
  end
  end
end
