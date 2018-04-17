class CreateTimelines < ActiveRecord::Migration[5.1]
  def change
    create_table :timelines do |t|
      t.integer :user_id
      t.string :name
      t.time :start_time
      t.time :end_time

      t.timestamps
    end
  end
end
