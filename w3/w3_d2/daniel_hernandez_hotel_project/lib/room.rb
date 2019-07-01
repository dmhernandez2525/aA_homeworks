class Room
    def initialize(capacity)
        @capacity = capacity
        @occupants = []
    end

    def capacity
        @capacity
    end

    def occupants
        @occupants
    end

    def full?
        self.capacity <= self.occupants.length
    end

    def available_space
        self.capacity - self.occupants.length
    end

    def add_occupant(string)
        if !self.full?
            @occupants << string
            return true
        else
            return false
        end  
    end
end
