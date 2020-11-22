class Triangle
  attr_accessor :length_one, :length_two, :length_three

  def initialize(length_one, length_two, length_three)
    @length_one = length_one
    @length_two = length_two
    @length_three = length_three
    @sides = [length_one, length_two, length_three].sort
  end

  def kind
    if (length_one <= 0 || length_two <= 0 || length_three <0) || @sides[0] + @sides[1] <= @sides[2]
      raise TriangleError
    elsif length_one == length_two && length_two == length_three
      :equilateral
    elsif length_one == length_two || length_two == length_three || length_three == length_one
      :isosceles
    elsif length_one != length_two && length_two != length_three && length_three != length_two
      :scalene
    elsif length_one == length_two && length_two == length_three
      :equilateral
    end
  end


  class TriangleError < StandardError
    def error_message
      puts "Not a triangle!!!!!!!!!!!!"
    end
  end
end
