# Your code goes here!

class Anagram
    attr_accessor :word, :reverse_array

    def initialize(word)
        @word = word
        @reverse_array = @word.reverse.split("").sort
    end

    def match(words_array)
        result = []
        words_array.each do |words|
            if words.split("").sort == @reverse_array
                result << words
            end
        end
        return result
    end
end

listen = Anagram.new("listen")
puts listen.match(%w(enlists google inlets banana))