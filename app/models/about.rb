class About < ActiveRecord::Base
    belongs_to :users
    belongs_to :events
end
