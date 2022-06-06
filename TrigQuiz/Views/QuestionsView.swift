//
//  QuestionsView.swift
//  TrigQuiz
//
//  Created by 90307297 on 5/26/22.
//

import Foundation
import SwiftUI

struct QuestionsView: View {
    
    @ObservedObject var theQuestion: Question
    
    @State var answerRow = AnswerRow()
    
    let isDegrees: Bool
    
    var body: some View {
        VStack{
            Spacer()
            HStack{
                Spacer()
                
                VStack(){
                    HStack{
                        Spacer()
                        
                        Text("Question \(theQuestion.questionNum)")
                            .font(.largeTitle)
                            .foregroundColor(.accentColor)


                        Text("out of 10")
                            .font(.title)
                            .foregroundColor(.accentColor)
                        
                        Spacer()
                    }
                    .foregroundColor(.accentColor)
                    
                    ProgressBar(progress: Double(theQuestion.questionNum) / 10.0)
                        .padding()
                    
                    Text("Question:")
                        .font(.title2)
                        .foregroundColor(.accentColor)
                    
                    HStack{
                        Text("\(theQuestion.firstPart)  \(Int(theQuestion.secondPart))º")
                            .font(.title)
                            .foregroundColor(.white)

                    }
                    
                    Spacer()
                    
                    
                    Text("Answer:")
                        .font(.title2)
                        .foregroundColor(.accentColor)
                    
                    answerRow
                    
                    Button(action: {
                        theQuestion.didCheck()
                    
                        if(isDegrees){
                            self.theQuestion.answerD = self.theQuestion.calculateAnswerD()
                        }
                        
                    }, label: {
                        Text("Check Answer")
                            .font(.title)
                            .foregroundColor(.accentColor)
                    })
                    
                    Text("Answer: \(theQuestion.answerD)")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding()
                    
                    Spacer()

                }
                Spacer()
            }
            Spacer()
        }
        .navigationBarHidden(true)
        .background(Color(red: 0.0, green: 0.0, blue: 0.0))
    }
}
/*
struct QuestionsView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionsView(theQuestion: Question(qN: 4), isDegrees: true)
    }
}
*/
