require 'colorize'

require_relative "components/guess"
require_relative "components/player"

class Game
  
  def self.compare(code)
    
    #to store correct color codes of player guess.
    @player_code = Array.new(4)

    #instantiate player object
    @guess = Player.new()

    until @player_code == code do

      #store player guess in variable
      p_code = @guess.player_guess

      code.each_with_index do |color, index|
        p_code.each_with_index do |p_color, p_index|
          if (color == p_color) and (index == p_index)
            puts "The color #{p_color} in position #{p_index+1} is correct.".colorize(:green)
            @player_code[p_index] = p_color

          elsif (color == p_color) and (index != p_index)
            puts "The color #{p_color} is correct but in the wrong position.".colorize(:yellow)
          end
        end
      end
    end

  end

end