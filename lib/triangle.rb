class Triangle

  def initialize side1, side2, side3
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if @side1 !=0 && @side1 == @side2 && @side1 == @side3 then :equilateral
    elsif (@side1 == @side2 && @side1 != @side3) || (@side1 == @side3 && @side1 != @side2) || (@side2 == @side3 && @side1 != @side2) then :isosceles
    elsif @side1 != @side2 && @side1 != @side3 then :scalene
    elsif @side1 == 0 || @side2 == 0 || @side3 == 0
      # begin 
        raise TriangleError
      # rescue TriangleError => error
      #   puts "Triangle::TriangleError"
      # end
    end
  end

  class TriangleError < StandardError
  end

end


puts Triangle.new(0, 0, 0).kind