class Guess

  def self.choice
    puts "Do you want to set the colors:\nPlease enter 'y' or 'n'"
    decision = gets.chomp

    if decision == 'y'
      Guess.color_code_player
    else
      Guess.color_code_computer
    end
  end

  def self.color_code_player
    @colors = []

    i = 1

    while i <= 4 do
      puts "Please enter color #{i}:"
      color = gets.chomp
      @colors.push(color)

      i += 1
    end

    return @colors

  end
  
  def self.color_code_computer
    colors = ["red", "green", "blue", "yellow", "orange", "cyan", "white", "black", "pink", "purple"]
    code = colors.sample(4)
    return code
  end

end