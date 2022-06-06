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
    
    @Published var answerD: String = ""
    
    @Published var checked = false
    
    init(qN: Int){
        firstPart = possibleFirstParts[Int(arc4random_uniform(UInt32(possibleFirstParts.count)))]
        secondPart = possibleSecondParts[Int(arc4random_uniform(UInt32(possibleSecondParts.count)))]

        questionNum = qN
    }
    
    func calculateAnswerD() -> String{
        if((firstPart == "sin" &&
            (secondPart == 30.0 || secondPart == 150.0))
           ||
           (firstPart == "cos" &&
            (secondPart == 60.0 || secondPart == 300.0)))
        {
            return "1/2"
        }
        
        else if((firstPart == "sin" &&
                 (secondPart == 210.0 || secondPart == 330.0))
                ||
                (firstPart == "cos" &&
                 (secondPart == 120.0 || secondPart == 240.0)))
        {
            return "-1/2"
        }
        
        else if((firstPart == "sin" &&
                 (secondPart == 45.0 || secondPart == 135.0))
                ||
                (firstPart == "cos" &&
                 (secondPart == 45.0 || secondPart == 315.0)))
        {
            return "√2/2"
        }
        
        else if((firstPart == "sin" &&
                 (secondPart == 225.0 || secondPart == 315.0))
                ||
                (firstPart == "cos" &&
                 (secondPart == 135.0 || secondPart == 225.0)))
        {
            return "-√2/2"
        }
        
        else if((firstPart == "sin" &&
                 (secondPart == 60.0 || secondPart == 120.0))
                ||
                (firstPart == "cos" &&
                 (secondPart == 30.0 || secondPart == 330.0)))
        {
            return "√3/2"
        }
        
        else if((firstPart == "sin" &&
                 (secondPart == 240.0 || secondPart == 300.0))
                ||
                (firstPart == "cos" &&
                 (secondPart == 150.0 || secondPart == 210.0)))
        {
            return "-√3/2"
        }
        
        //ONLY TAN
        
        else if(firstPart == "tan" &&
                (secondPart == 60.0 || secondPart == 240.0))
        {
            return "√3"
        }
        
        else if(firstPart == "tan" &&
                (secondPart == 120.0 || secondPart == 300.0))
        {
            return "-√3"
        }
        
        else if(firstPart == "tan"
                && (secondPart == 30.0 || secondPart == 210.0))
        {
            return "√3/3"
        }
        
        else if(firstPart == "tan"
                && (secondPart == 150.0 || secondPart == 330.0))
        {
            return "-√3/3"
        }
        
        //UP, DOWN, LEFT, RIGHT
        
        else if ((firstPart == "sin" && secondPart == 90.0)
                 ||
                 (firstPart == "cos" && (secondPart == 360.0))
                 ||
                 (firstPart == "tan" &&
                  (secondPart == 45.0 || secondPart == 225.0)))
        {
            return "1"
        }
        
        else if((firstPart == "sin" && secondPart == 270.0)
                ||
                (firstPart == "cos" && secondPart == 180.0)
                ||
                (firstPart == "tan" &&
                 (secondPart == 135.0 || secondPart == 315.0)))
        {
            return "-1"
        }
        
        else if((firstPart == "sin" &&
                 (secondPart == 180.0 || secondPart == 360.0))
                ||
                (firstPart == "cos" &&
                 (secondPart == 90.0 || secondPart == 270.0))
                ||
                (firstPart == "tan" &&
                 (secondPart == 180.0 || secondPart == 360.0)))
        {
            return "0"
        }
        
        else if(firstPart == "tan" &&
                (secondPart == 90.0 || secondPart == 270))
        {
            return "undifiend"
        }
        
        return "whoops"
    }
    
    func calculateAnswerR(allAnswers: Answer) -> String{
        return ""
    }
    
    func didCheck(){
        self.checked = true
    }
}
