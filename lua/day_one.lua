function ends_in_3(number)
    return number%10 == 3
end

function is_prime(number)
    if number <= 1 then
        return false
    elseif number <= 3 then
        return true
    elseif number % 2 == 0 and number % 3 == 0 then
        return false
    else
        local i = 5
        while (i ^ 2) <= number do
            if number % i == 0 or number % (i + 2) == 0 then
                return false
            else
                i = i + 6
            end  
        end
        return true
    end
end

function print_n_first_prime_numbers(nfirst)
    for i = 1, nfirst do
        if ends_in_3(i) and is_prime(i) then
            print(i)
        end
    end
end

function for_loop(a,b,f)
    if(a < b) then
        while a <= b do
            f(a)
            a = a + 1
        end
    else
        print("a is greater than b")
    end
end

print("FIRST DAY EXERCICES")
print("/***********************************************")
print("                     EASY                       ")
print("***********************************************/")
print("*ends_in_3*")
print("")
print("20 ends in 3? " .. tostring(ends_in_3(20)))
print("103 ends in 3? " ..  tostring(ends_in_3(103)))
print("95 ends in 3? " ..  tostring(ends_in_3(95)))
print("23 ends in 3? " ..  tostring(ends_in_3(23)))
print("3 ends in 3? " ..  tostring(ends_in_3(3)))
print("")
print("*is_prime*")
print("")
print("5 is prime? " .. tostring(is_prime(5)))
print("37 is prime? " ..  tostring(is_prime(37)))
print("25 is prime? " ..  tostring(is_prime(25)))
print("987.548.787 is prime? " ..  tostring(is_prime(987548787)))
print("7 is prime? " ..  tostring(is_prime(7)))
print("")
print("*print_n_first_prime_numbers*")
print("")
print("First " .. 50 .." prime numbers that ends with 3 ")
print("")
print_n_first_prime_numbers(50)
print("")
print("/***********************************************")
print("                    MEDIUM                      ")
print("***********************************************/")
print("*for_loop*")
print("")
print("Print 1 to 10 with for_loop function")
for_loop(1,10, print)