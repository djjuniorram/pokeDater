class Activity < ApplicationRecord
    belongs_to :rendezvou
    has_many :locations
end
