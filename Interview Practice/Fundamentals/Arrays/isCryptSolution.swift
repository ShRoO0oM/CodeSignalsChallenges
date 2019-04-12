extension String {
    func decodedChars(decodedHint:[Character:Int]) -> String {
        return self.compactMap {(String(decodedHint[$0]!))}.joined()
    }
}

func isCryptSolution(crypt: [String], solution: [[Character]]) -> Bool {
    
    var decodeHint = [Character:Int]()
    
    solution.forEach { decodeHint[$0[0]] = Int(String($0[1])) }
    
    let word1 = crypt[0]
    let word2 = crypt[1]
    let word3 = crypt[2]
    
    
    if String(word1.first!).decodedChars(decodedHint:decodeHint) == "0" || String(word2.first!).decodedChars(decodedHint:decodeHint) == "0" || String(word3.first!).decodedChars(decodedHint:decodeHint) == "0" {
        if word1.count != 1 || word2.count != 1 {
            return false
        }
    }
    
    let decoded1 = Int(word1.decodedChars(decodedHint: decodeHint))!
    let decoded2 = Int(word2.decodedChars(decodedHint: decodeHint))!
    let decoded3 = Int(word3.decodedChars(decodedHint: decodeHint))!
    
    
    return decoded1 + decoded2 == decoded3
    
}


