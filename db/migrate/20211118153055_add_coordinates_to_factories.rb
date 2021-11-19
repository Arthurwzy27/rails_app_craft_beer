class AddCoordinatesToFactories < ActiveRecord::Migration[6.1]
  def change
    add_column :factories, :latitude, :float
    add_column :factories, :longitude, :float
  end
end
