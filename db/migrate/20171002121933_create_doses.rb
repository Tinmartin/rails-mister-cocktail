class CreateDoses < ActiveRecord::Migration[5.1]
  def change
    create_table :doses do |t|
      t.text :description
      t.references :coktail, foreign_key: true
      t.references :ingredient, foreign_key: true

      t.timestamps
    end
  end
end