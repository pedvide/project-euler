# A palindromic number reads the same both ways. The largest palindrome made
# from the product of two 2-digit numbers is 9009 = 91 * 99.

# Find the largest palindrome made from the product of two 3-digit numbers.


function largest_palindrome(digits)
    limit = 10^digits-1
    largest = 0
    for i in limit:-1:1
        for j in i:-1:1
            num = i*j
            str = string(num, pad=digits*2)
            if (num > 10^(digits*2-1)) & (num > largest) & (reverse(str[1:digits]) == str[digits+1:end])
                largest = num
            end
        end
    end
    #return sort(list)[end]
    return largest
end

largest_palindrome(2)

largest_palindrome(3)
