//
//  Answer.swift
//  TrigQuiz
//
//  Created by 90307297 on 5/30/22.
//

import Foundation

struct Answer{
    
    let firstPosAns = [singleAnswer(doubleVal: 1.0, stringVal: "+"), singleAnswer(doubleVal: -1.0, stringVal: "-")]
    let secPosAns = [singleAnswer(doubleVal: 0.0, stringVal: "0"),
                            singleAnswer(doubleVal: 1.0, stringVal: "1"),
                            singleAnswer(doubleVal: nil, stringVal: "undefined"),
                            singleAnswer(doubleVal: 1.0 / 2.0, stringVal: "1/2"),
                            singleAnswer(doubleVal: 2.0.squareRoot() / 3.0, stringVal: "√2/3"),
                            singleAnswer(doubleVal: 3.0.squareRoot() / 3.0, stringVal: "√3/3"),
                            singleAnswer(doubleVal: 2.0.squareRoot() / 2.0, stringVal: "√2/2"),
                            singleAnswer(doubleVal: 3.0.squareRoot(), stringVal: "√3")]
    
    let rediansPosAns = [singleAnswer(doubleVal: 0.0, stringVal: "0"),
                         singleAnswer(doubleVal: Double.pi / 6.0, stringVal: "π/6"),
                         singleAnswer(doubleVal: Double.pi / 4.0, stringVal: "π/4"),
                         singleAnswer(doubleVal: Double.pi / 3.0, stringVal: "π/3"),
                         singleAnswer(doubleVal: Double.pi / 2.0, stringVal: "π/2"),
                         singleAnswer(doubleVal: 2.0 * Double.pi / 3.0, stringVal: "2π/3"),
                         singleAnswer(doubleVal: 3.0 * Double.pi / 4.0, stringVal: "3π/4"),
                         singleAnswer(doubleVal: 5.0 * Double.pi / 6.0, stringVal: "5π/6"),
                         singleAnswer(doubleVal: Double.pi, stringVal: "π"),
                         singleAnswer(doubleVal: 7.0 * Double.pi / 6.0, stringVal: "7π/6"),
                         singleAnswer(doubleVal: 5.0 * Double.pi / 4.0, stringVal: "5π/4"),
                         singleAnswer(doubleVal: 4.0 * Double.pi / 3.0, stringVal: "4π/3"),
                         singleAnswer(doubleVal: 3.0 * Double.pi / 2.0, stringVal: "3π/2"),
                         singleAnswer(doubleVal: 5.0 * Double.pi / 3.0, stringVal: "5π/3"),
                         singleAnswer(doubleVal: 7.0 * Double.pi / 4.0, stringVal: "7π/4"),
                         singleAnswer(doubleVal: 11.0 * Double.pi / 6.0, stringVal: "11π/6")]
    
}

struct singleAnswer: Hashable{
    
    let doubleVal: Double?
    let stringVal: String
    
}
