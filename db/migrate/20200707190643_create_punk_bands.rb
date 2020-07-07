class CreatePunkBands < ActiveRecord::Migration[6.0]
  def change
    create_table :punk_bands do |t|
      t.string :name
      t.integer :punkiness
      t.boolean :poser

      t.timestamps
    end
  end
end
