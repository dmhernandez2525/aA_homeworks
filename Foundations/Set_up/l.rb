#wright a function that takes in a string that hat has 
#a number either as a single digit or more ,a math function 
#and another number 
#the function should return a number as a interger


def math_function (string)
  x = string.split
  one = x[0]
  two = x[1]
  three = x[2]  
  return do_math(one,two,three)
end 

def do_math (x,y,z)
    x = x.to_i
    z = z.to_i
    if y == "+"
        return x + z
    elsif y == "-"
        return x - z
    elsif y == "*"
        return x * z
    elsif y == "/"
        return x / z
    else
        return "Please enter a valid math operand"
    end 
end
puts math_function("2 * 2")
puts math_function("9 * 25")
puts math_function("78 / 2555")
puts math_function("78 ** 2555")

