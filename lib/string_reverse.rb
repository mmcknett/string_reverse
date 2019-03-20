# A method to reverse a string in place.
# Let n be the length of the input string (my_string)
# Time complexity:
#   There are 3 edge case operations. There are 3 operations prior to the loop.
#   The loop runs n / 2 times.
#   Each iteration, the loop does 3 operations.
#   The total time complexity is thus 6 + 3(n/2) = O(n)
# Space complexity:
#   The input string is length n. We additionally allocate space for 3 integers.
#   All changes to the string are done in place, requiring no additional space.
#   The total space used is on the order of 3 + n = O(n)
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
