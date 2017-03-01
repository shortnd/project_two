class Event < ActiveRecord::Base
  has_many :attendences, dependent: :destroy
end
