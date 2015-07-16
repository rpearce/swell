class CreateCompetitions < ActiveRecord::Migration
  def change
    create_table :competitions do |t|
      t.string :name     , null: false
      t.string :location , null: false
      t.date   :occurs_on, null: false

      t.timestamps null: false
    end
  end
end
