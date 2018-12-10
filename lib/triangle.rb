class Triangle
  attr_accessor :sides
  
  def initialize(*args)
    @sides = [*args]
  end
  
  def equilateral?
    self.sides[0] == self.sides[1] && self.sides[1] == self.sides[2]
  end
  def isosceles?
    self.sides[0] == self.sides[1] || self.sides[1] == self.sides[2] || self.sides[0] == self.sides[2]
  end
  def scalene?
    self.sides[0] != self.sides[1] && self.sides[1] != self.sides[2]
  end
  def triangle?
    sides_valid  = (self.sides.all? {|side| side > 0})
    triangle_inequality = ((self.sides[0] + self.sides[1] > self.sides[2]) && (self.sides[1] + self.sides[2] > self.sides[0]) && (self.sides[2] + self.sides[0] > self.sides[1]))
    
    sides_valid && triangle_inequality
  end
  
  def kind
    if self.triangle?
      if self.equilateral?
        @kind = :equilateral
      elsif self.isosceles?
        @kind = :isosceles
      elsif self.scalene?
        @kind = :scalene
      end
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
