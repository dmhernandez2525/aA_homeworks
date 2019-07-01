class Hangman
  DICTIONARY = ["cat", "dog", "bootcamp", "pizza"]
  def self.random_word 
    DICTIONARY.sample
  end
  def initialize
    @secret_word = Hangman.random_word
    @guess_word = Array.new(@secret_word.length , "_")
    @attempted_chars = []
    @remaining_incorrect_guesses = 5
  end

  def guess_word
    @guess_word
  end

  def attempted_chars
    @attempted_chars
  end

  def remaining_incorrect_guesses
    @remaining_incorrect_guesses
  end

  def already_attempted?(char)
    @attempted_chars.include?(char)
  end

  def get_matching_indices(char)
    nwe_array = []
    @secret_word.split("").each_with_index {|ele,idx| nwe_array << idx if ele == char}
    nwe_array
  end

  def fill_indices(char,array)
    # array.each_with_index {|ele,index| @guess_word[index] = char if ele == char}
    # puts char
    @guess_word.each_with_index{|ele,index| @guess_word[index] = char if array.include?(index)}
  end

  def try_guess(char)
    if self.get_matching_indices(char).length == 0
      @remaining_incorrect_guesses -= 1
    end

    self.fill_indices(char,self.get_matching_indices(char))

    if self.already_attempted?(char)
      puts "that has already been attempted" 
      return false
    else
     self.attempted_chars << char 
     return true
    end 
  end

  def ask_user_for_guess
    puts "Enter a char:"
    input = gets.chomp
    self.try_guess(input)
  end

  def win?
    if @guess_word == @secret_word.split("")
      puts "WIN"
      return true
    else
      return false
    end
  end

  def lose?
    if remaining_incorrect_guesses == 0
      puts "LOSE"
      return true
    else
      return false
    end
  end

  def game_over?
    if self.win? || self.lose?
      puts @secret_word 
      return true
    else 
      return false
    end
  end
end
