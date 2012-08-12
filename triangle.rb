# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  if a == 0 or b == 0 or c == 0
    raise TriangleError, "Triangle sides must not be 0"
  end

  if a + c == b or a + b == c or c + b == a 
    raise TriangleError, "2 sides can't equal 1"
  end
  
  unless a + b > c 
    raise TriangleError, "2 sides must be greater than 1"
  end

  if a < 0 or b < 0 or c < 0
    raise TriangleError, "Can't have less than zero"
  end
    
  if a == b && b == c
    :equilateral
  elsif a != b && a != c && b != c
    :scalene
  else
    :isosceles
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
