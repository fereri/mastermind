class Guess
  
def self.color_code
  colors = ["red", "green", "blue", "yellow", "orange", "cyan", "white", "black", "pink", "purple"]
  code = colors.sample(4)

  p code
end

end