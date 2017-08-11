# input param +array+ is an Array that contains elements which are:
#
#  1. Integer
#  2. Array of Integer
#
# It returns an Array with all the integers. Basically does what #flatten does.
# Note that the implementation is a recursive implementation.
# If an element is an Integer, we just push it to the +result+ Array.
# If the element is an Array, we flatten it and then we push each one of its
# elements to the +result+ Array.
#
def flatten_aoi_recursive(array)
  return nil if array.nil?
  result = []
  array.each do |element|
    if element.is_a?(Array)
      f_array = flatten_aoi_recursive(element)
      f_array.each do |f_element|
        result << f_element
      end
    else
      result << element
    end
  end
  result
end
