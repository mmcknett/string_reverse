# A method to reverse a string in place.
# Time complexity: ?
# Space complexity: ?
def string_reverse(my_string)
  if my_string == nil || my_string == "" || my_string.length == 1 then
    return my_string
  end

  # Until you reach the middle of the string, swap
  # a character from the front half with a character
  # from the back half.
  curr = 0
  mid = my_string.length / 2
  last = my_string.length - 1
  until curr == mid do
    my_string[curr], my_string[last - curr] = my_string[last - curr], my_string[curr]
    curr += 1
  end

  return my_string
end
