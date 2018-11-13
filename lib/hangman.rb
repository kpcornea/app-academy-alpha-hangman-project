class Hangman
  DICTIONARY = ["cat", "dog", "bootcamp", "pizza"]

  def self.random_word
    DICTIONARY.sample
  end

  def initialize
    @random_word = Hangman.random_word
    @secret_word = @random_word
    @guess_word = Array.new(@random_word.length, "_")
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
    attempted_chars.include?(char)
  end

  def get_matching_indices(guess_char)
    matches = []
    @secret_word.each_char.with_index do |char, i|
      matches << i if char == guess_char
    end
    matches
  end

  def fill_indices(char, arr)
    arr.each { |i| @guess_word[i] = char }
  end

end

# go back and review class stuff+. why sometimes self and sometimes Hangman? i think cuz in class scope, self refers to class. but in initialize method, self probs refers to new instance that's getting initialized. so have to specify Hangman not self. not 100% sure tho. review syntax for class method. i think if its just normal it's an instance method, for class method i need to do self.method_name but not 100% sure. # == instance method. :: == class method.
