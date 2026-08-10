class Solution {
    func countDigits(_ num: Int) -> Int {
        // If num is 0, return 0
        if num == 0 {
            return num
        }

        var temp = num
        var count = 0

        while temp != 0 {
            // Get the last digit
            let remainder = temp % 10

            // Check if the digit divides the original number
            if num % remainder == 0 {
                count = count + 1
            }

            // Remove the last digit
            temp = temp / 10
        }

        // Return the number of digits that divide num
        return count
    }
}