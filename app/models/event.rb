class Event < ApplicationRecord
  belongs_to :traveller
  belongs_to :agent
end
