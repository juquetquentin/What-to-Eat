class CreatePlats < ActiveRecord::Migration[5.1]
  def change
    create_table :plats do |t|
      t.string :name
      t.string :price
      t.string :day
      t.string :picture

      t.timestamps
    end
  end
end
