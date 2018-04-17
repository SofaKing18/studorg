class CreateHomewords < ActiveRecord::Migration[5.1]
  def change
    create_table :homewords do |t|
      t.integer :user_id
      t.string :description
      t.datetime :deadline
      t.integer :subject_id

      t.timestamps
    end
  end
end
