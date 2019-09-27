class Location < ApplicationRecord
    belongs_to :activity
    delegate :rendezvou, to: => activity, :allow_nil => true
end
