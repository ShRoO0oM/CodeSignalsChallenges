func firstNotRepeatingCharacter(s: String) -> Character {
    
    
    var setArray = [Character:Int]()
    
    for char in s {
        if setArray[char] != nil {
            var value = setArray[char]!
            value += 1
            setArray[char] = value
        }else {
            setArray[char] = 1
        }
    }
    
    let chars = setArray.filter({ (char2,value) -> Bool in
        return value ==  1
    }).keys
    
    return s.filter({ (char) -> Bool in
        return chars.contains(char)
    }).first ?? "_"
    
    
}
