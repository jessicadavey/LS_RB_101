def joinor(array, delim=", ", conjunction="or")
  case array.size
  when 0
    ""
  when 1
    array.join
  when 2
    array.join(" #{conjunction} ")
  when 3..nil
    array[-1] = "#{conjunction} " + array[-1].to_s
    array.join(delim)
  end
end

puts joinor([1, 2]) == "1 or 2"
puts joinor([1, 2, 3]) == "1, 2, or 3"
puts joinor([1, 2, 3], '; ') == "1; 2; or 3"
puts joinor([1, 2, 3], ', ', 'and') == "1, 2, and 3"
