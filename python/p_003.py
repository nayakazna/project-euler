"""
Largest Prime Factor
Problem 3

The prime factors of 13195 are 5, 7, 13, and 29. What is the largest
prime factor of the number 600851475143?

Observation:
Fact (1). All primes after 3 can be written in the form 6k ± 1
          (the opposite it doesn't necessarily hold, though)
Fact (2). Other forms of numbers (6k, 6k + 2, 6k + 3, dan 6k + 4) are divisible by either 2 or 3
          Hence we can save up time and memory by immediately returning False when the input (n) is
          divisible by 2 or 3 instead of checking by dividing it one by one with numbers from 2 to n.
          We're left with numbers in the form of 6k ± 1. 
Fact (3). To check the primality of n, we only need to divide it with numbers up to sqrt(n)
Fact (4). Every number can be written in the form of (p_1)^(k_1) * (p_2)^(k_2) * ... * (p_n)^(k_n)
          where p_i denotes the i-th prime factor of the number (sorted from smallest to largest)
          and k_i is a natural number.
Procedure:
Let num = 600851475143.
Based on Fact (4), we can do an iteration from i = 2 to i = sqrt(num). In each iteration, we check whether i is a prime. 
If yes, then divide num by i until it can't divide num evenly anymore (the number then becomes (p_2)^(k_2) * ... * (p_n)^(k_n)).
If not, immediately proceed to the next iteration.
Why do we only need to iterate up to sqrt(num)?
    - If num is a prime number then
"""

# With that in mind, we can define a prime checker function as follows:
def isPrime(n):
    if n <= 1:                      # 0, 1, and negative numbers aren't prime numbers
        return False
    elif n <= 3:                    # 2 and 3 are prime numbers
        return True
    elif n % 2 == 0 or n % 3 == 0:  # Other multiples of 2 or 3 aren't prime numbers
        return False
    for i in range(5, int(n ** 0.5) + 1, 6):  # Using Fact (1) and (3)
        if n % i == 0 or n % (i + 2) == 0:
            return False
    return True
num = 600851475143
maks = 2
for i in range(5, int(num ** 0.5 + 1), 6):
    if isPrime(i):
        while num % i == 0 and num > 1:
            maks = num
            num //= i
    if isPrime(i + 2):
        while num % (i + 2) == 0 and num > 1:
            maks = num
            num //= (i+2)
print(maks)