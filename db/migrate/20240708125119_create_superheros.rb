class CreateSuperheros < ActiveRecord::Migration[7.1]
  def change
    create_table :superheros do |t|
      t.string :name
      t.string :civilian_name
      t.string :power
      t.string :origin
      t.date :birthdate

      t.timestamps
    end
  end
end
