require_relative "code"

class Mastermind

    def initialize(length)
        @secret_code = Code.random(length)
    end

    def print_matches(code_instance)
        puts @secret_code.num_exact_matches(code_instance).to_s + ": " + "exact matches"

        puts @secret_code.num_near_matches(code_instance).to_s + ": "  + "near matches"
    end

    def ask_user_for_guess
        puts "Enter a code"
        input = gets.chomp
        guss = Code.from_string(input)
        self.print_matches(guss)
        @secret_code == guss
    end

end
