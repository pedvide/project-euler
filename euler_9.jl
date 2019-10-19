#=

A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
a2 + b2 = c2

For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.

=#

p = 12

function pythagorean_triplet(perimeter)
    for b in 2:Int(ceil((perimeter-1)/2))
        for a in 1:b-1
            if 2*perimeter*(a+b) == perimeter^2 + 2*a*b
                #println(a, ", ", b, ", ", perimeter-a-b)
                return a, b, perimeter-a-b
            end
            #println(a, ", ", b, ", ", perimeter-a-b)
        end
    end
end

res = pythagorean_triplet(1000)
prod(res)
