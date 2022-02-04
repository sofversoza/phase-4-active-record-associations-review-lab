class Passenger < ApplicationRecord
    has_many :rides
    has_many :taxis, through: :rides
end

class Ride < ApplicationRecord
    belongs_to :taxi
    belongs_to :passenger
end

class Taxi < ApplicationRecord
    has_many :rides
    has_many :passengers, through: :rides
end