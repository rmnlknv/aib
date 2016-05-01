class CreatePlots < ActiveRecord::Migration
  def change
    create_table :plots do |t|
      t.string :title
      t.text :description
      t.string :image1
      t.string :image2
      t.string :image3
      t.string :image4

      t.timestamps null: false
    end
  end
end
