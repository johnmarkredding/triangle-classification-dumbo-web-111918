class Triangle
  attr_accessor :side1, :side2, :side3
  @kind
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  
  def kind
    if self.side1 + self.side2 > self.side3
      :equilateral
      :isosceles
      :scalene
    else
      raise TriangleError
    end
    
    begin
        raise TriangleError
    rescue TriangleError => error
      puts error.message
    end
  end
  
  class TriangleError < StandardError
    def message
      ""
    end
  end
end
