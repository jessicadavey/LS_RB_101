# Question 2

```ruby
puts "the value of 40 + 2 is " + (40 + 2)
```

The above code throws the error "No implicit conversion of Integer into String".  Apparently the `puts` method can't handle an integer concatenated to a string, although it can handle integers by themselves.  

One solution is to use string interpolation:

```ruby
puts "the value of 40 + 2 is #{40 + 2}"
```
Another is to call `to_s` on the integer.

```ruby
puts "the value of 40 + 2 is " + (40 + 2).to_s
```
