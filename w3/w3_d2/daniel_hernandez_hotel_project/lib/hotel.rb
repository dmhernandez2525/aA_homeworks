require_relative "room"

class Hotel
    def initialize(name,hash)
        @name = name
        @rooms = Hash.new
        hash.each {|k,v| @rooms[k] = Room.new(v)}
    end

    def name
        (@name.split.map(&:capitalize)).join(" ")
    end

    def rooms
        @rooms
    end

    def room_exists?(str)
        self.rooms.key?(str)
    end

    def check_in(person,room)
         if self.room_exists?(room)
            if self.rooms[room].add_occupant(person)
                puts "check in successful"
            else
                puts "sorry, room is full"
            end
         else
             puts "sorry, room does not exist"
        end
    end

    def has_vacancy?()
        self.rooms.each{|key,v|return true if !v.full?}
        false
    end

    def list_rooms
        self.rooms.each do |key,v|
            puts "#{key} #{v.available_space}"
        end
    end
  
end
