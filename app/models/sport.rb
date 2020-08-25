class Sport < ApplicationRecord
has_one_attached :icon
has_one_attached :photo
has_many :events
end
