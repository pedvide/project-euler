#=

By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
What is the 10 001st prime number?

=#

is_prime(n) = !any(n%i == 0 for i in 2:BigInt(floor(sqrt(n))))

function nth_prime(n)
    counter = 1
    i = 2
    while true
        if is_prime(i)
            #println(counter, ", ", i)
            if counter == n
                #println()
                return i
            end
            counter += 1
        end
        i += 1
    end
end

nth_prime(6)

nth_prime(10001)
