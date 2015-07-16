class CreateEntrants < ActiveRecord::Migration
  def change
    create_table :entrants do |t|
      t.integer :competition_id, null: false
      t.integer :surfer_id, null: false
      t.integer :score

      t.timestamps null: false
    end

    add_index :entrants, :competition_id
    add_index :entrants, :surfer_id
  end
end
