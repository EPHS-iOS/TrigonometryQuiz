//
//  AnswerButton.swift
//  TrigQuiz
//
//  Created by 90307297 on 5/26/22.
//

import SwiftUI

struct AnswerRow: View {
    
    let posAnswers = Answer()
    
    @State var firstAnswer = singleAnswer(doubleVal: nil, stringVal: "")
    @State var secondAnswer = singleAnswer(doubleVal: 0, stringVal: "0")
    
    var body: some View {
        ZStack{
            Rectangle()
                .shadow(color: .gray, radius: 2)
                .foregroundColor(.black)
                .border(.white)
                .frame(width: width - 50, height: 50)

            HStack{
                if(secondAnswer.stringVal != "0" && secondAnswer.stringVal != "undefined"){
                    Picker("click ±", selection: $firstAnswer) {
                        ForEach(posAnswers.firstPosAns, id: \.self){ item in
                            Text(item.stringVal).foregroundColor(.white)
                                
                        }
                    }
                    .padding()
                
                }
                Picker("click √", selection: $secondAnswer) {
                    ForEach(posAnswers.secPosAns, id: \.self){ item in
                        Text(item.stringVal)
                            .foregroundColor(.white)
                    }
                }
            }
        }
    }
    func getFirst() -> singleAnswer{
        return firstAnswer
    }
    
    func getSecond() -> singleAnswer{
        return secondAnswer
    }
}

struct RadianAnswerRow: View{
    
    let posAnswers = Answer()
    
    @State var answerR = singleAnswer(doubleVal: 0, stringVal: "0")
    
    var body: some View{
        ZStack{
            Rectangle()
                .shadow(color: .gray, radius: 2)
                .foregroundColor(.black)
                .border(.white)
                .frame(width: width - 50, height: 50)

            HStack{
                Picker("click π", selection: $answerR) {
                    ForEach(posAnswers.rediansPosAns, id: \.self){ item in
                        Text(item.stringVal)
                            .foregroundColor(.white)
                    }
                }
            }
        }
    }
    func getRaidian() -> singleAnswer{
        return answerR
    }
}

struct AnswerRow_Previews: PreviewProvider {
    static var previews: some View {
        AnswerRow()
    }
}
