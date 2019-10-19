# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

primes = [19, 17, 13, 11, 7, 5, 3, 2]
added_factors = [3, 2, 2, 2]

number = prod(primes)*prod(added_factors)

for i in 1:20
    if number % i != 0
        println("Not divisible by: ", i)
    end
end
