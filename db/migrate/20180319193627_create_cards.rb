class CreateCards < ActiveRecord::Migration[5.1]
  def change
    create_table :cards do |t|
      t.string :pack_code
      t.string :pack_name
      t.string :type_code
      t.string :type_name
      t.string :faction_code
      t.string :faction_name
      t.integer :position
      t.string :name
      t.integer :cost
      t.string :text
      t.integer :income
      t.integer :initiative
      t.integer :claim
      t.integer :reserve
      t.integer :deck_limit
      t.integer :strength
      t.string :traits
      t.string :flavor
      t.string :illustrator
      t.boolean :is_unique
      t.boolean :is_loyal
      t.boolean :is_military
      t.boolean :is_intrigue
      t.boolean :is_power
      t.boolean :is_multiple
      t.string :image_url
      t.string :label
      t.integer :ci
      t.integer :si

      t.timestamps
    end
  end
end
