//
//  Rectangle.swift
//  Weather Report
//
//  Created by Arun Amuri on 14/06/2021.
//

import Foundation


//mutating - which can be modified
//immutatble - which cant be modified - struct is an immutable

struct Rectangle {
    //properties
    var width: Float
    var height: Float
    var area: Float  = 0.0
    
    init(width: Float, height: Float) {
        self.width = width
        self.height = height
    }
    //mutating is not required becuse it is a struct - value type
    mutating func calculateArea() {
        area = height * width
    }
    
    func calculateAreaV2() -> Float {
        return width * height
    }
}

class Square {
    //properties
    var width: Float
    var height: Float
    var area: Float = 0.0
    
    
    init(width: Float, height: Float) {
        self.width = width
        self.height = height
    }
    //mutating is not required becuse it is a class - reference type
    func calculateArea() {
        area = width * height
    }
}

