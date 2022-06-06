//
//  allQuestionsView.swift
//  TrigQuiz
//
//  Created by 90307297 on 5/27/22.
//

import SwiftUI

struct AllQuestionsView: View {
    
    @ObservedObject var theQuiz: Quiz
    
    @State var currentQuestion = 0
    
    @State var answer = ""
    
    var body: some View {
        
        NavigationView {
            VStack {
                
                QuestionsView(theQuestion: theQuiz.allQuestions[currentQuestion], isDegrees: theQuiz.isDegrees)
                
                Spacer()
                
                Button(action: {
                    if(theQuiz.allQuestions[currentQuestion].checked && currentQuestion < 9){
                        currentQuestion += 1
                                                        
                        theQuiz.allQuestions[currentQuestion].checked = false
                                            
                        print(currentQuestion)
                    }
                }, label: {
                    GenericButtons(text: "Next")
                })
            }.background(.black)
        }.navigationBarHidden(currentQuestion < 9)
    }
}

struct AllQuestionsView_Previews: PreviewProvider {
    static var previews: some View {
        AllQuestionsView(theQuiz: Quiz(d: true))
    }
}

