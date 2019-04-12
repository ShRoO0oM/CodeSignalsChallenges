func sudoku2(grid: [[Character]]) -> Bool {
    
    for (j,array) in grid.enumerated() {
        for (i,element) in array.enumerated() {
            
            if element != "." {
                
                for (z,element2) in array[0..<array.count].enumerated() {
                    if element2 == element {
                        if i != z {
                            return false
                        }
                    }
                }
                
                for z in 0..<grid.count {
                    let element2 = grid[z][i]
                    if element2 == element {
                        if z != j {
                            return false
                        }
                        
                    }
                }
                
                var x = ((j/3)*3)
                
                var z = ((i/3)*3)
                
                
                while x != (j/3)*3+3 {
                    while z != (i/3)*3+3 {
                        let element2 = grid[x][z]
                        if element2 == element {
                            if x != j && z != i {
                                return false
                            }
                        }
                        z += 1
                    }
                    x += 1
                }
                
                
            }
        }
    }
    return true
}

