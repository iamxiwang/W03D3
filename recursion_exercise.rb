# Exponentiation
# Write two versions of exponent that use two different recursions:

# this is math, not Ruby methods.

# # recursion 1
# def exp(value, n)

# end

# exp(b, 0) = 1
# exp(b, n) = b * exp(b, n - 1)

# # recursion 2

# def exp(value, n)
# end
# exp(b, 0) = 1
# exp(b, 1) = b
# exp(b, n) = exp(b, n / 2) ** 2             [for even n]
# exp(b, n) = b * (exp(b, (n - 1) / 2) ** 2) [for odd n]
# Note that for recursion 2, you will need to square the results of exp(b, n / 2) and (exp(b, (n - 1) / 2). Remember that you don't need to do anything special to square a number, just calculate the value and multiply it by itself. So don't cheat and use exponentiation in your solution.

# Suggestion: Break the methods down into parts. For more information check out the Breaking Methods Into Parts reading in the sidebar.

# Suggestion 2: Try walking through your code with Simple Examples.

# If the n == 256, about how many nested recursive steps will we run in the first case?

# How deep will we need to recurse for the second? Keep in mind that the first reduces the exponent by one for each recursion, while the second reduces it by half.

# In addition to testing your methods by running the code, try the following exercise:

# On paper, write out the value of each variable for every line in the code:

# Write out what happens with base 0 and power 0 as inputs (should be easy). e.g., if you had run exp(0,0).
# Write out what happens for base 0 and power 1. e.g., if you had run exp(0,1).
# Write out what happens for base 1 and power 0.
# Write out what happens for base 1 and power 1.
# Write out what happens for base 1 and power 2.
# Write out what happens for base 2 and power 0.
# Write out what happens for base 2 and power 1.
# Write out what happens for base 2 and power 2.
# Make sure you can trace from the very beginning to the very end in these examples.

# How many examples do you need to walk through to be confident that it works?

# Deep dup
# The #dup method doesn't make a deep copy:
def deep_dup(arr)
    return arr if !arr.is_a?(Array)
    output = []

    arr.each do |ele|

        # if !ele.is_a?(Array)
        #     output << ele
        # else
            output << deep_dup(ele)
           
        # end
    end
    output 
end

robot_parts = [
  ["nuts", "bolts", "washers"],
  ["capacitors", "resistors", "inductors"]
]
new_arr = deep_dup(robot_parts)
p new_arr
new_arr << [12]
p robot_parts
p new_arr


def bsearch(arr, target)
    mid = arr.length / 2

    if arr[mid] == target
        return mid
    elsif arr[0] != target && arr.length == 1
        return nil
    end
    
    if target < arr[mid]
        left = arr[0...mid]
        return bsearch(left,target)
    else
        right = arr[mid + 1..-1]
        return mid + 1 + bsearch(right, target) if bsearch(right, target)
    end
end

p bsearch([1, 2, 3], 1) # => 0
p bsearch([2, 3, 4, 5], 3) # => 1
p bsearch([2, 4, 6, 8, 10], 6) # => 2
p bsearch([1, 3, 4, 5, 9], 5) # => 3
p bsearch([1, 2, 3, 4, 5, 6], 6) # => 5
p bsearch([1, 2, 3, 4, 5, 6], 0) # => nil
p bsearch([1, 2, 3, 4, 5, 7], 6) # => nil

# Array Subsets
# Write a method subsets that will return all subsets of an array.

# subsets([]) # => [[]]
# subsets([1]) # => [[], [1]]
# subsets([1, 2]) # => [[], [1], [2], [1, 2]]
# subsets([1, 2, 3])
# # => [[], [1], [2], [1, 2], [3], [1, 3], [2, 3], [1, 2, 3]]

def subsets(arr)
    if arr.length == 0
        return [arr]
    elsif arr.length == 1
        return [[], arr]
    end
    last_ele = arr[-1]
    subsets(arr[0...-1]) << [last_ele]  [arr]
end

p subsets([]) # => [[]]
p subsets([1]) # => [[], [1]]
p subsets([1, 2]) # => [[], [1], [2], [1, 2]]
p subsets([1, 2, 3])







    
