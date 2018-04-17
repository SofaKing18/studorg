class CreateChemestries < ActiveRecord::Migration[5.1]
  def change
    create_table :chemestries do |t|
      t.integer :user_id
      t.string :name
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
