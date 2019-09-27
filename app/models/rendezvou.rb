class Rendezvou < ApplicationRecord
    belongs_to :pet
    belongs_to :single_pet
    has_many :activities
    has_many :locations, through: :activities
end
