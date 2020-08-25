class Sport < ApplicationRecord
has_one_attached :icon
has_many :events
end
