class CreateMuseums < ActiveRecord::Migration[7.2]
  def change
    create_table :museums do |t|
      t.string :name
      t.text :description
      t.string :address
      t.string :image_url

      t.timestamps
    end
  end
end
