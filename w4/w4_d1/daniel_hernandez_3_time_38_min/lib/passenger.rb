class Passenger
    attr_reader :name
    
    def initialize(name)
        @name = name
        @flight_numbers = []
    end

    def has_flight?(flight_num)#string
        @flight_numbers.map(&:upcase).include?(flight_num.upcase)
    end

    def add_flight(flight_num)#string
        @flight_numbers << flight_num.upcase if !self.has_flight?(flight_num)
    end
end