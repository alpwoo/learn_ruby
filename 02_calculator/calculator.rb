#write your code here
def add (a, b)
    a + b
end

def subtract (a, b)
    a - b
end

def sum (a)
    sum_of_a = 0
    a.each do |number|
        sum_of_a = sum_of_a + number
    end
    sum_of_a
end

=begin def multiply (a, b)
    a * b
end
=end

def multiply (a)
    product_of_a = 1
    a.each do |number|
        product_of_a = product_of_a * number
    end
    product_of_a
end

def power (a, b)
    a ** b
end

def factorial (a)
    factorial_of_a = 1
    if (a == 0) or (a == 1)
        return 1
    else
        while a > 1
            factorial_of_a = factorial_of_a * a
            a = a - 1
        end
        return factorial_of_a
    end
end

