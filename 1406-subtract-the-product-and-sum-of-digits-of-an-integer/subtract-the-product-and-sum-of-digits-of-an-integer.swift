class Solution {
    func subtractProductAndSum(_ n: Int) -> Int {
        if(n==0) {
            return n
        }

        var temp = n
        var product = 1
        var sum = 0

        while (temp != 0) {
            var remainder = temp % 10
            product = product * remainder
            sum = sum + remainder
            temp = temp / 10
        }

        return (product - sum)
    }
}