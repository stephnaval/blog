class CreateSuperheroes < ActiveRecord::Migration[6.0]
    def change
      create_table :superheroes do |t|
        t.string :name
        t.string :superpower
        t.references :category, foreign_key: true
  
        t.timestamps
      end
    end
  end
  