//
//  Question.swift
//  TrigQuiz
//
//  Created by 90307297 on 6/2/22.
//

import Foundation

class Question: ObservableObject{
    
    let possibleFirstParts = ["sin", "cos", "tan"]
    let possibleSecondParts = [30.0, 60.0, 90.0, 120.0, 150.0, 180.0, 210.0, 240.0, 270.0, 300.0, 330.0, 360.0]
    let questionNum: Int
    var firstPart: String
    var secondPart: Double
    
    @Published var checked = false
    
    
    init(qN: Int){
        firstPart = possibleFirstParts[Int(arc4random_uniform(UInt32(possibleFirstParts.count)))]
        secondPart = possibleSecondParts[Int(arc4random_uniform(UInt32(possibleSecondParts.count)))]
        
        questionNum = qN
    }
    
    func calculateAnswer() -> Double{
        
        if(firstPart == "sin"){
            return sin(secondPart)
        }
        
        else if(firstPart == "cos"){
            return cos(secondPart)
        }
        
        else if(firstPart == "tan"){
            return tan(secondPart)
        }
        
        return 0.0
    }
    
    func didCheck(){
        self.checked = true
    }
}
