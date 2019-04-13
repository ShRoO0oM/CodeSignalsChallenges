func isListPalindrome(l: ListNode<Int>?) -> Bool {
    
    var array = [Int]()
    
    var list = l
    
    while list != nil {
        array.append(list!.value)
        list = list?.next
    }
    if array.isEmpty {return true}
    if array.count == 1 {return true}
    
    if array.count % 2 == 0 {
        let newArray = array[array.count/2...array.count-1].reversed()
        for (index,element) in newArray.enumerated() {
            if array[index] != element {
                return false
            }
        }
        return true
    }else {
        let newArray = array[((array.count+1)/2)-1...array.count-1].reversed()
        for (index,element) in newArray.enumerated() {
            if array[index] != element {
                return false
            }
        }
        return true
    }
}


