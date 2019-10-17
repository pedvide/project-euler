# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

num = BigInt(600851475143)
#num = BigInt(13195)

is_prime(n) = !any(n%i == 0 for i in 2:BigInt(floor(sqrt(n))))

function largest_factor(num)
    #step_ = (num % 2 == 0) ? -1 : -2
    num_leftover = num
    for p in (BigInt(p) for p=2:num_leftover if is_prime(p))
        if p == num_leftover
            println(p)
            return p
        elseif num_leftover % p == 0
            num_leftover = BigInt(num_leftover / p)
        end
    end
end
largest_factor(num)
println()
