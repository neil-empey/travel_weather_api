class CreateWeathers < ActiveRecord::Migration[6.1]
  def change
    create_table :weathers do |t|
      t.integer :dt
      t.float :temp1
      t.float :wind_speed1
      t.float :wind_deg1
      t.float :precip_intensity1
      t.float :dew_point1
      t.integer :road_state1
      t.float :road_temp1
      t.string :alert1
      t.string :event1
      t.integer :event_level1
      t.float :temp2
      t.float :wind_speed2
      t.float :wind_deg2
      t.float :precip_intensity2
      t.float :dew_point2
      t.integer :road_state2
      t.float :road_temp2
      t.string :alert2
      t.string :event2
      t.integer :event_level2

      t.timestamps
    end
  end
end
