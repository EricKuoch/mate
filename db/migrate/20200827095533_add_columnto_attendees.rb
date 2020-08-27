class AddColumntoAttendees < ActiveRecord::Migration[6.0]
  def change
    add_column :attendees, :creator_rating, :float
    add_column :attendees, :creator_review, :text
    change_column :attendees, :rating, :float
  end
end
