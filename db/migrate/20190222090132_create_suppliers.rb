class CreateSuppliers < ActiveRecord::Migration[5.2]
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :image
      t.string :street
      t.integer :rooms
      t.float :conference_capacity
      t.float :distance_airport
      t.float :distance_train
      t.float :distance_city
      t.float :distance_highway
      t.float :feedback
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
