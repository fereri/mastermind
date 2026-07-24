class Player

  def player_guess
    @array = []

    i = 1
    while i <= 4 do
      puts "Enter color #{i}:"
      @code = gets.chomp
      @array.push(@code)

      i += 1
    end

    p @array
  end

end