class Solution {

    // Returns the sum of all numbers from 1 to n
    // that are divisible by 3, 5, or 7.
    func sumOfMultiples(_ n: Int) -> Int {

        // If n is 0, there are no multiples to add.
        if n == 0 {
            return 0
        }

        // Inclusion-Exclusion Principle:
        //
        // First, add the sum of multiples of 3, 5, and 7.
        //
        // Then subtract the overlaps:
        // 3 * 5 = 15
        // 5 * 7 = 35
        // 3 * 7 = 21
        //
        // Finally, add back the numbers divisible by
        // all three: 3 * 5 * 7 = 105.
        let result =
            calculate(n, 3)
            + calculate(n, 5)
            + calculate(n, 7)
            - calculate(n, 3 * 5)
            - calculate(n, 5 * 7)
            - calculate(n, 3 * 7)
            + calculate(n, 3 * 5 * 7)

        return result
    }

    // Calculates the sum of all multiples of k
    // that are less than or equal to n.
    //
    // Example:
    // n = 20, k = 5
    //
    // Multiples:
    // 5, 10, 15, 20
    //
    // Sum:
    // 5 + 10 + 15 + 20 = 50
    func calculate(_ n: Int, _ k: Int) -> Int {

        // Find how many multiples of k exist up to n.
        //
        // Example:
        // 20 / 5 = 4
        //
        // Therefore, there are 4 multiples:
        // 5, 10, 15, 20
        let div = n / k

        // Use the Arithmetic Series formula:
        //
        // 1 + 2 + 3 + ... + div
        // = div * (div + 1) / 2
        //
        // Since our numbers are:
        // k, 2k, 3k, ... div*k
        //
        // We multiply the arithmetic series by k.
        let arithmeticProgression = k * div * (div + 1) / 2

        return arithmeticProgression
    }
}