class CreateApiPotatos < ActiveRecord::Migration[5.0]
  def change
    create_table :api_potatos do |t|
      t.string :name
      t.string :variety
      t.string :image

      t.timestamps
    end
  end
end
