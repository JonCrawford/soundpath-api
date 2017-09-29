class CreateAttendances < ActiveRecord::Migration[5.1]
  def change
    create_table :attendances do |t|
      t.belongs_to(:user, foreign_key: true)
      t.belongs_to(:event, foreign_key: true)
      t.text :notes

      t.timestamps
    end
  end
end
