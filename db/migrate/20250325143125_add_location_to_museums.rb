class AddLocationToMuseums < ActiveRecord::Migration[7.2]
  def change
    add_column :museums, :location, :string
  end
end
