class AddUserAndOperatorToMeetings < ActiveRecord::Migration[8.0]
  def change
    # Add a foreign key to users for "user"
    add_reference :meetings, :user, null: false, foreign_key: true

    # Add a foreign key to users for "operator"
    add_reference :meetings, :operator, null: false, foreign_key: { to_table: :users }
  end
end
