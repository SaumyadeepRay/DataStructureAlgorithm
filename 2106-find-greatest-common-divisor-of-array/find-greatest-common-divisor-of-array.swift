class Solution {

    // Finds the GCD of the smallest and largest numbers in the array.
    func findGCD(_ nums: [Int]) -> Int {

        // Find the smallest and largest values in the array.
        //
        // min() and max() return Optional values because the array
        // could be empty. `guard let` safely unwraps those values.
        //
        // If either value is nil, the array is empty, so return 0.
        guard let smallest = nums.min(),
              let largest = nums.max() else {
            return 0
        }

        // Calculate and return the GCD of the smallest and largest numbers.
        return gcd(smallest, largest)
    }

    // Calculates the GCD using the Euclidean Algorithm.
    //
    // The rule is:
    // GCD(a, b) = GCD(b, a % b)
    //
    // We keep calling gcd() with the remainder until b becomes 0.
    func gcd(_ a: Int, _ b: Int) -> Int {

        // Base case:
        // When b becomes 0, a is the GCD.
        if b == 0 {
            return a
        }

        // Continue the Euclidean Algorithm recursively.
        return gcd(b, a % b)
    }
}
