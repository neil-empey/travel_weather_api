class CreateRoutes < ActiveRecord::Migration[6.1]
  def change
    create_table :routes do |t|
      t.integer :dt
      t.float :lat1
      t.float :long1
      t.float :lat2
      t.float :long2

      t.timestamps
    end
  end
end
