class CreateFactories < ActiveRecord::Migration[6.1]
  def change
    create_table :factories do |t|
      t.string :name
      t.text :description
      t.string :location
      t.integer :price_per_day
      t.integer :capacity
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
