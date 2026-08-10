class Solution {
    func minimumSum(_ num: Int) -> Int {
        if num == 0 {
            return num
        }

        var temp = num
        var digits = Array<Int>()

        // Extract each digit
        while temp != 0 {
            let remainder = temp % 10
            digits.append(remainder)
            temp = temp / 10
        }

        // Sort digits in ascending order
        digits.sort()

        // Create two numbers using the smallest digits
        let num1 = (digits[0] * 10) + digits[2]
        let num2 = (digits[1] * 10) + digits[3]

        return (num1 + num2)
    }
}