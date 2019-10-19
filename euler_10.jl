#=

The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.

=#
using Distributed
addprocs(3)

max_num = Int(2e6)

@everywhere is_prime(n) = !any(n%i == 0 for i in 2:BigInt(floor(sqrt(n))))
partial_sum(start, stop) = sum(i for i in start:stop if is_prime(i))

res = @distributed (+) for i = 2:max_num
    if is_prime(i)
        i
    else
        0
    end
end
