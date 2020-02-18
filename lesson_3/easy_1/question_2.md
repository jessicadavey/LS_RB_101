# Question 2

**Describe the difference between ! and ? in Ruby.**

## 1. what is `!=` and where should you use it?

A comparison operator.  Returns `true` if the two items compared are not equal, `false` if they are equal.

## 2. put ! before something, like `!user_name`

Returns an opposite value.  So if `user_name` is truthy, `!user_name` returns `false`.

## 3. put ! after something, like `words.uniq!`

When used at the end of method names, "!" means the method is dangerous in some way (generally mutates the caller) and that there is another, non-dangerous option available (without the "!").

## 4. put ? before something

Part of the ternary operator (`? :`).

## 5. put ? after something

"?" means that the method is a predicate method (returns either `true` or `false`).

## 6. put !! before something, like `!!user_name`

Means the opposite of the opposite.  So if `user_name` is truthy, `!!user_name` will return `true`.