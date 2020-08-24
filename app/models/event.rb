class Event < ApplicationRecord
  belongs_to :sport

  has_many :attendees

  validates :title, presence: true
  validates :location, presence: true
  validates :start_time, presence: true
  validates :number_of_participants, presence: true
end
