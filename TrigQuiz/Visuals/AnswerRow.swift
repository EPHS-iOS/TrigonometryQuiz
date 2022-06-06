//
//  AnswerButton.swift
//  TrigQuiz
//
//  Created by 90307297 on 5/26/22.
//

import SwiftUI

struct DegreeAnswerRow: View {
    
    let posAnswers = Answer()
    
    @State var firstAnswerD = singleAnswer(intVal: nil, stringVal: "")
    @State var secondAnswerD = singleAnswer(intVal: 0, stringVal: "0")
    
    var body: some View {
        ZStack{
            Rectangle()
                .shadow(color: .gray, radius: 2)
                .foregroundColor(.black)
                .border(.white)
                .frame(width: width - 50, height: 50)

            HStack{
                if(secondAnswerD.stringVal != "0" && secondAnswerD.stringVal != "undefined"){
                    Picker("click ±", selection: $firstAnswerD) {
                        ForEach(posAnswers.degreesFirstPosAns, id: \.self){ item in
                            Text(item.stringVal).foregroundColor(.white)
                                
                        }
                    }
                    .padding()
                
                }
                Picker("click √", selection: $secondAnswerD) {
                    ForEach(posAnswers.degreesSecPosAns, id: \.self){ item in
                        Text(item.stringVal)
                            .foregroundColor(.white)
                    }
                }
            }
        }
    }
    func getDegreefirst() -> singleAnswer{
        return firstAnswerD
    }
    
    func getDegreeSecond() -> singleAnswer{
        return secondAnswerD
    }
}

struct RadianAnswerRow: View{
    
    let posAnswers = Answer()
    
    @State var answerR = singleAnswer(intVal: 0, stringVal: "0")
    
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
}

struct AnswerRow_Previews: PreviewProvider {
    static var previews: some View {
        RadianAnswerRow()
    }
}
