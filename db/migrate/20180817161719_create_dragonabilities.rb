class CreateDragonabilities < ActiveRecord::Migration[5.2]
  def change
    create_table :dragon_abilities do |t|
      t.integer :dragon_id
      t.integer :ability_id
      t.belongs_to :dragon
      t.belongs_to :ability
      t.timestamps
    end
  end
end
