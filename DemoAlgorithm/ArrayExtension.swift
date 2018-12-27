//
//  ArrayExtension.swift
//  DemoAlgorithm
//
//  Created by RD-WilleyLo on 2018/12/26.
//  Copyright © 2018 RD-WilleyLo. All rights reserved.
//

import Foundation

extension Array where Element: Comparable {
    func insertionSort() -> Array<Element> {
        
        //check for trivial case
        guard self.count > 1 else {
            return self
        }
        
        //mutated copy
        var output: Array<Element> = self
        
        for primaryindex in 0..<output.count {
            
            let key = output[primaryindex]
            var secondaryindex = primaryindex
            
            while secondaryindex > -1 {
                if key < output[secondaryindex] {
                    
                    //move to correct position
                    output.remove(at: secondaryindex + 1)
                    output.insert(key, at: secondaryindex)
                }
                
                secondaryindex -= 1
            }
        }
        
        return output
    }
}

extension Array where Element: Comparable {
    func bubbleSort() -> Array<Element> {
        
        //check for trivial case
        guard self.count > 1 else {
            return self
        }
        
        //mutated copy
        var output: Array<Element> = self
        
        for primaryIndex in 0..<self.count {
            let passes = (output.count - 1) - primaryIndex
            
            //"half-open" range operator
            for secondaryIndex in 0..<passes {
                let key = output[secondaryIndex]
                
                //compare / swap positions
                if (key > output[secondaryIndex + 1]) {
                    output.swapAt(secondaryIndex, secondaryIndex + 1)
                }
            }
        }
        
        return output
    }
}

extension Array where Element: Comparable {
    func selectionSort() -> Array<Element> {
        
        //check for trivial case
        guard self.count > 1 else {
            return self
        }
        
        //mutated copy
        var output: Array<Element> = self
        
        for primaryindex in 0..<output.count {
            
            var minimum = primaryindex
            var secondaryindex = primaryindex + 1
            
            while secondaryindex < output.count {
                
                //store lowest value as minimum
                if output[minimum] > output[secondaryindex] {
                    minimum = secondaryindex
                }
                secondaryindex += 1
            }
            
            
            //swap minimum value with array iteration
            if primaryindex != minimum {
                output.swapAt(primaryindex, minimum)
            }
        }
        
        return output
    }
}
