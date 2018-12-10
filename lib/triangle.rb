class Triangle
  attr_accessor :side1, :side2, :side3
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  
  def kind
    if self.side1 + self.side2 > self.side3
      if self.side1 == self.side2 && self.side2 == self.side3
        @kind = :equilateral
      elsif 
      :isosceles
      :scalene
      
      
      @kind
    else
      begin
          raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
    end
  end
  
  class TriangleError < StandardError
    def message
      "Not a triangle."
    end
  end
end
