class Pet < ApplicationRecord
    belongs_to :user
    has_many :rendezvous
    has_many :activities, through: :rendezvous
    has_many :matches, class_name: "Match", foreign_key: "matchee_id"
    has_many :matches, class_name: "Match", foreign_key: "matched_id"
end
