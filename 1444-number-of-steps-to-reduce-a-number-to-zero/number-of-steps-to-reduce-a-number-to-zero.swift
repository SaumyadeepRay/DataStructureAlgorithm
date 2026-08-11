class Solution {

    // Returns the number of steps required to make num equal to 0.
    //
    // Rules:
    // 1. If the number is even, divide it by 2.
    // 2. If the number is odd, subtract 1.
    func numberOfSteps(_ num: Int) -> Int {

        // If num is already 0, no steps are required.
        if num == 0 {
            return 0
        }

        // Create a temporary variable because we need to modify
        // the value of num while processing it.
        var temp = num

        // Keeps track of how many operations we perform.
        var steps = 0

        // Continue until temp becomes 0.
        while temp != 0 {

            // If temp is even, divide it by 2.
            if temp % 2 == 0 {
                temp = temp / 2
            }

            // Otherwise, temp is odd, so subtract 1.
            else {
                temp = temp - 1
            }

            // One operation has been completed.
            steps = steps + 1
        }

        // Return the total number of steps.
        return steps
    }
}
