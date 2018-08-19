class CreateAbilities < ActiveRecord::Migration[5.2]
  def change
    create_table :abilities do |t|
      t.string :name
      t.string :ability_type
      t.integer :damage
      t.timestamps
    end
  end
end
