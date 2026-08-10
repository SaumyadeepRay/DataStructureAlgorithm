class Solution {
    func subtractProductAndSum(_ n: Int) -> Int {
        // If the number is 0, both product and sum are 0
        if n == 0 {
            return n
        }

        var temp = n
        var product = 1
        var sum = 0

        while temp != 0 {
            // Get the last digit of the number
            let remainder = temp % 10

            // Multiply the digit with the current product
            product = product * remainder

            // Add the digit to the current sum
            sum = sum + remainder

            // Remove the last digit from the number
            temp = temp / 10
        }

        // Return product of digits - sum of digits
        return product - sum
    }
}
