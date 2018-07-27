class CreatePieces < ActiveRecord::Migration[5.2]
  def change
    create_table :pieces do |t|
      t.string :name
      t.string :photo
      t.string :subcategory
      t.string :category
      t.string :description

      t.timestamps
    end
  end
end
