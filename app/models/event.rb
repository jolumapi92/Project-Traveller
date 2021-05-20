class Event < ApplicationRecord
  belongs_to :traveller
  belongs_to :agent
  belongs_to :location

  has_many :event_activities
  has_many :activities, through: :event_activities

  accepts_nested_attributes_for :activities
end
