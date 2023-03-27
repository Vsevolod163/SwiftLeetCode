/*
Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

An input string is valid if:

Open brackets must be closed by the same type of brackets.
Open brackets must be closed in the correct order.
Every close bracket has a corresponding open bracket of the same type.
 
 Input: s = "()[]{}"
 Output: true
*/

func isValid(_ string: String) -> Bool {
    var stack: [Character] = []
    let brackets: [Character:Character] = [")": "(", "}": "{", "]": "["]
    
    for char in string {
        if let opening = brackets[char] {
            // current character is a closing bracket
            if stack.isEmpty || stack.popLast() != opening {
                return false
            }
        } else {
            // current character is an opening bracket
            stack.append(char)
        }
    }
    
    // return true if the stack is empty
    return stack.isEmpty
}

let string = "(([]){})"

isValid(string)
