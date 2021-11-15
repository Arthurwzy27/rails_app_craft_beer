class CreateBeers < ActiveRecord::Migration[6.1]
  def change
    create_table :beers do |t|
      t.string :name
      t.text :description
      t.references :factory, null: false, foreign_key: true

      t.timestamps
    end
  end
end
