
func firstDuplicate(a: [Int]) -> Int {
    
    var tempDic = [Int:Int]()
    
    
    for index in a {
        if tempDic.keys.contains(index) {
            return index
        } else {
            tempDic[index] = 0
        }
        
    }
    
    return -1

}

