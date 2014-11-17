class CreatePlaners < ActiveRecord::Migration
  def change
    create_table :planers do |t|
      t.string :new_plan
      t.string :priority
      t.string :date
      t.string :status

      t.timestamps
    end
  end
end
