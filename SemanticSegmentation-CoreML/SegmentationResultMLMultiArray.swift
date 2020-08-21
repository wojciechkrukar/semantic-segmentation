//
//  SegmentationPostProcessor.swift
//  DepthPrediction-CoreML
//
//  Created by Mark Krukar on 8/11/20.
//  Copyright © 2020 HyperGiant.com. All rights reserved.
//

import CoreML

class SegmentationResultMLMultiArray {
    let mlMultiArray: MLMultiArray
    let segmentationmapWidthSize: Int
    let segmentationmapHeightSize: Int
    
    init(mlMultiArray: MLMultiArray) {
        self.mlMultiArray = mlMultiArray
        self.segmentationmapWidthSize = mlMultiArray.shape[0].intValue
        self.segmentationmapHeightSize = mlMultiArray.shape[1].intValue
    }
    
    subscript(colunmIndex: Int, rowIndex: Int) -> NSNumber {
        let index = colunmIndex*(segmentationmapHeightSize) + rowIndex
        return mlMultiArray[index]
    }
}
