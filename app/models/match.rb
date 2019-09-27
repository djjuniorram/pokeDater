class Match < ApplicationRecord
    belongs_to :pet
    belongs_to :matchee, class_name: "Pet"
end
