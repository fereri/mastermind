class Player

  def player_guess
    @array = []

    4.times do
      @code = gets.chomp
      @array.push(@code)
    end

    p @array
  end

end