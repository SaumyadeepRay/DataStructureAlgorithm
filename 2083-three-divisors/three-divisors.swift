class Solution {
    func isThree(_ n: Int) -> Bool {
        // Numbers <= 3 cannot have exactly 3 divisors
        if n <= 3 {
            return false
        }

        // 1 and n are always divisors
        var count = 2

        // We only need to check up to sqrt(n)
        var i = 2

        while i * i <= n {
            // If i divides n, we found a pair of divisors
            if n % i == 0 {
                let m = i
                let k = n / i

                // If both divisors are the same,
                // n is a perfect square.
                if m == k {
                    count += 1
                } else {
                    // We found two different divisors
                    count += 2
                }
            }

            // If we already have more than 3 divisors,
            // n cannot be the answer.
            if count > 3 {
                return false
            }

            i += 1
        }

        // Return true only if n has exactly 3 divisors
        return count == 3
    }
}