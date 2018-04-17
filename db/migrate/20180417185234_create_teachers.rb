class CreateTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :teachers do |t|
      t.integer :user_id
      t.string :last_name
      t.string :first_name
      t.string :middle_name

      t.timestamps
    end
  end
end
