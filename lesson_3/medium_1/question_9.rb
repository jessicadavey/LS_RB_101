def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

# What would be the return value of the following method invocation?

p bar(foo) # => 'no'

# foo is called using the default argument "no" and returns "yes" (as it always will).
# "yes" is then passed as the argument to bar.  So it doesn't use the default "no"
# bar then checks the value of param, and since it isn't "no", bar returns "no".