//
//  Quiz.swift
//  TrigQuiz
//
//  Created by 90307297 on 5/30/22.
//

import Foundation

class Quiz: ObservableObject{
    
    @Published var guess: Int = 0
    
    var allQuestions: [Question] = []
    
    let isDegrees: Bool
    
    init(d: Bool){
        
        for num in 1...10 {
            allQuestions.append(Question(qN: num))
        }
        
        isDegrees = d
    }
}
