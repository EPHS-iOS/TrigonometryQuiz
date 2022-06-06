//
//  Answer.swift
//  TrigQuiz
//
//  Created by 90307297 on 5/30/22.
//

import Foundation

struct Answer{
    
    let degreesFirstPosAns = [singleAnswer(intVal: 1, stringVal: "+"), singleAnswer(intVal: -1, stringVal: "-")]
    let degreesSecPosAns = [singleAnswer(intVal: 0, stringVal: "0"),
                            singleAnswer(intVal: 1, stringVal: "1"),
                            singleAnswer(intVal: nil, stringVal: "undefined"),
                            singleAnswer(intVal: 1 / 2, stringVal: "1/2"),
                            singleAnswer(intVal: Int(2.squareRoot() / 3), stringVal: "√2/3"),
                            singleAnswer(intVal: Int(3.squareRoot() / 3), stringVal: "√3/3"),
                            singleAnswer(intVal: Int(2.squareRoot() / 2), stringVal: "√2/2"),
                            singleAnswer(intVal: Int(3.squareRoot()), stringVal: "√3")]
    
    let rediansPosAns = [singleAnswer(intVal: 0, stringVal: "0"),
                         singleAnswer(intVal: Int(Double.pi / 6), stringVal: "π/6"),
                         singleAnswer(intVal: Int(Double.pi / 4), stringVal: "π/4"),
                         singleAnswer(intVal: Int(Double.pi / 3), stringVal: "π/3"),
                         singleAnswer(intVal: Int(Double.pi / 2), stringVal: "π/2"),
                         singleAnswer(intVal: Int(2 * Double.pi / 3), stringVal: "2π/3"),
                         singleAnswer(intVal: Int(3 * Double.pi / 4), stringVal: "3π/4"),
                         singleAnswer(intVal: Int(5 * Double.pi / 6), stringVal: "5π/6"),
                         singleAnswer(intVal: Int(Double.pi), stringVal: "π"),
                         singleAnswer(intVal: Int(7 * Double.pi / 6), stringVal: "7π/6"),
                         singleAnswer(intVal: Int(5 * Double.pi / 4), stringVal: "5π/4"),
                         singleAnswer(intVal: Int(4 * Double.pi / 3), stringVal: "4π/3"),
                         singleAnswer(intVal: Int(3 * Double.pi / 2), stringVal: "3π/2"),
                         singleAnswer(intVal: Int(5 * Double.pi / 3), stringVal: "5π/3"),
                         singleAnswer(intVal: Int(7 * Double.pi / 4), stringVal: "7π/4"),
                         singleAnswer(intVal: Int(11 * Double.pi / 6), stringVal: "11π/6")]
    
}

struct singleAnswer: Hashable{
    
    let intVal: Int?
    let stringVal: String
    
}
