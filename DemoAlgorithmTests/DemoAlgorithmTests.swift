//
//  DemoAlgorithmTests.swift
//  DemoAlgorithmTests
//
//  Created by RD-WilleyLo on 2018/12/26.
//  Copyright © 2018 RD-WilleyLo. All rights reserved.
//

import XCTest
@testable import DemoAlgorithm

class DemoAlgorithmTests: XCTestCase {
    
    var testArray: Array<Int>!
    
    override func setUp() {
        testArray = UnitTestTool.generateRandom(count: 5000)
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func test_insertion() {
        self.measure({
            let _ = testArray.insertionSort()
        })
    }
    
    func test_bubble() {
        self.measure({
            let _ = testArray.bubbleSort()
        })
    }
    
    func test_selection() {
        self.measure({
            let _ = testArray.selectionSort()
        })
    }
    
    func test_mergeSort() {
        self.measure {
            let _ = UnitTestTool.mergeSortBottomUp(testArray, <)
        }
    }
    
    func test_quickSort() {
        self.measure {
            let _ = UnitTestTool.quicksort(testArray)
        }
    }
}
