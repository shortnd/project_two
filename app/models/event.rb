class Event < ActiveRecord::Base
  has_many :attendees, dependent: :destroy
end
