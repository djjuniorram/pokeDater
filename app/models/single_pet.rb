class SinglePet < ApplicationRecord
    has_many :rendezvous
    has_many :activities, through: :rendezvous
end
