class CreateNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :notes do |t|
      t.integer :user_id
      t.datetime :event_dt
      t.datetime :notify_dt
      t.string :description

      t.timestamps
    end
  end
end
