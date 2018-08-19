class CreateDragons < ActiveRecord::Migration[5.2]
  def change
    create_table :dragons do |t|
      t.string :name
      t.integer :level
      t.integer :mp
      t.integer :hp
      t.belongs_to :user
      t.timestamps
    end
  end
end
