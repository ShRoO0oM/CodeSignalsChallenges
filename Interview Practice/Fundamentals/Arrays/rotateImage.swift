func rotateImage(a: [[Int]]) -> [[Int]] {
    let size = a.count
    var newArr: [[Int]] = a
    
    for i in 0..<size {
        for j in 0..<size {
            let xTransposed = size - 1 - i
            let yTransposed = j
            
            newArr[yTransposed][xTransposed] = a[i][j]
        }
    }
    
    return newArr
}



