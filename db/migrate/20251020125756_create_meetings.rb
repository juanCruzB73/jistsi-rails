class CreateMeetings < ActiveRecord::Migration[8.0]
  def change
    create_table :meetings do |t|
      t.string :room_name
      t.string :status
      t.datetime :started_at
      t.datetime :ended_at

      t.timestamps
    end
  end
end
