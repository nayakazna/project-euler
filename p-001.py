"""
If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6, and 9. The sum of these multiples is 23. 
Find the sum of all the multiples of 3 or 5 below 1000.
"""
# Approach 1
# Sum all multiples of 3 and multiples of 5, then subtract multiples of 15 since they are calculated twice

# With only basic commands
summa = 0
for i in range(3, 1000):
    if (i % 3 == 0) or (i % 5 == 0):
        summa += i
print(summa)

# With `sum` method
print(sum(range(3, 1000, 3)) + sum(range(5, 1000, 5)) - sum(range(15, 1000, 15)))

# Approach 2 (use math :D)
# Arithmetic series general formula: s_n = (2a + (n-1) * d) * n/2
# where a is the initial term, d is the difference between consecutive terms, and n is the number of terms
def divisible(d: int, upper_bound: int) -> int:
    n = (upper_bound - 1) // d
    return (2 * d + (n - 1) * d) * n // 2
print(divisible(3, 1000) + divisible(5, 1000) - divisible(15, 1000))