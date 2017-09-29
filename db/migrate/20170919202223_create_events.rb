class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.integer :creator_id
      t.datetime :datetime
      t.belongs_to(:user, foreign_key: true)
      t.string :notes  

      t.timestamps
    end
  end
end
