//
//  allQuestionsView.swift
//  TrigQuiz
//
//  Created by 90307297 on 5/27/22.
//

import SwiftUI

struct AllQuestionsView: View {
    
    @StateObject var theQuiz: Quiz
    
    @State var currentQuestion = 0
    
    var body: some View {
        
        VStack {
            
            QuestionsView(theQuestion: $theQuiz.allQuestions[currentQuestion], isDegrees: theQuiz.isDegrees)
            
            Spacer()
            
            Button(action: {
                if(theQuiz.allQuestions[currentQuestion].checked){
                    if(currentQuestion < 9){
                        currentQuestion += 1
                        
                        theQuiz.allQuestions[currentQuestion].checked = false
                        
                        print(currentQuestion)
                    }
                    else{
                        
                    }
                }
            }, label: {
                GenericButtons(text: "Next")
            })
        }.background(.black)
    }
}

struct AllQuestionsView_Previews: PreviewProvider {
    static var previews: some View {
        AllQuestionsView(theQuiz: Quiz(d: true))
    }
}

