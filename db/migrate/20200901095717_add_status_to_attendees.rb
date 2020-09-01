class AddStatusToAttendees < ActiveRecord::Migration[6.0]
  def change
    add_column :attendees, :status, :string
  end
end
