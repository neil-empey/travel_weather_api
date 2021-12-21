class CreateWeathers < ActiveRecord::Migration[6.1]
  def change
    create_table :weathers do |t|
      t.integer :dt, :array => true, :default => '{}'
      t.float :temp, :array => true, :default => '{}'
      t.float :feels, :array => true, :default => '{}'
      t.float :tempMin, :array => true, :default => '{}'
      t.float :tempMax, :array => true, :default => '{}'
      t.float :pressure, :array => true, :default => '{}'
      t.integer :seaLevel, :array => true, :default => '{}'
      t.integer :grndLevel, :array => true, :default => '{}'
      t.integer :humidity, :array => true, :default => '{}'
      t.string :description, :array => true, :default => '{}'
      t.integer :clouds, :array => true, :default => '{}'
      t.float :windSpeed, :array => true, :default => '{}'
      t.integer :windDir, :array => true, :default => '{}'
      t.float :prob, :array => true, :default => '{}'
      t.float :amount, :array => true, :default => '{}'
      t.integer :timeZone, :array => true, :default => '{}'


      t.timestamps
    end
  end
end
