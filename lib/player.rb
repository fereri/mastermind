class Player
  
  def initialize(n)
    @name = n
  end

  def self.guess
    @array = []

    4.times do
      @code = gets.chomp
      @array.push(@code)
    end

    p @array
  end

end