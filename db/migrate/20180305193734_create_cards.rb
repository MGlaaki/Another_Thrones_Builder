class CreateCards < ActiveRecord::Migration[5.1]
  def change
    create_table :cards do |t|
      t.string :title
      t.string :house
      t.string :text
      t.integer :cost
      t.boolean :has_military_icon
      t.boolean :has_politic_icon
      t.boolean :has_intrigue_icon
      t.boolean :is_loyal
      t.integer :strength
      t.string :type

      t.timestamps
    end
  end
end
