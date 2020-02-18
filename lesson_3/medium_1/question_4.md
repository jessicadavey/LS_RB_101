# Question 4

```ruby
def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end
```

The difference between these two implementations is that `Array#<<` mutates the original array whereas `Array#+` returns a new array.  In the first method, whatever array was passed in as an argument will be changed permanently, but in the second the changed array is only available inside the method.