class Flight
    attr_reader  :passengers
    def initialize(flight_num,capacity)#string , num
        @flight_number = flight_num
        @capacity = capacity
        @passengers = []
    end

    def full?
        passengers.length >= @capacity
    end

    def board_passenger(passenger)#Passenger instance
        passengers << passenger if passenger.has_flight?(@flight_number) && ! self.full?
    end

    def list_passengers
        self.passengers.map{|instance| instance.name}
    end

    def [](index)#number
        passengers[index]
    end

    def <<(passenger)#instance
        self.board_passenger(passenger)
    end
    
end