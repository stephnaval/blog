class CreateDisneys < ActiveRecord::Migration[7.1]
  def change
    create_table :disneys do |t|
      t.string :title
      t.string :main_character
      t.integer :year_created

      t.timestamps
    end
  end
end
