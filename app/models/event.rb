class Event < ApplicationRecord
  belongs_to :traveller
  belongs_to :agent

  has_many :activities, through: :event_activities
end
