class CreateSurfers < ActiveRecord::Migration
  def change
    create_table :surfers do |t|
      t.string  :name, null: false
      t.integer :age
      t.string  :picture
      t.string  :hometown

      t.timestamps null: false
    end
  end
end
