class Location < ApplicationRecord
    has_many :activities, dependent: :destroy
end
