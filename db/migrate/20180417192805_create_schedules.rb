class CreateSchedules < ActiveRecord::Migration[5.1]
  def change
    create_table :schedules do |t|
      t.integer :user_id
      t.integer :chemestry_id
      t.integer :subject_id
      t.integer :lecture_hall_id
      t.integer :teacher_id
      t.integer :timeline_id
      t.datetime :date

      t.timestamps
    end
  end
end
