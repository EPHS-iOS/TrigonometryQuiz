//
//  ContentView.swift
//  TrigQuiz
//
//  Created by 90307297 on 5/26/22.
//

import SwiftUI

let width = UIScreen.main.bounds.width
let height = UIScreen.main.bounds.height

struct ContentView: View {
    
    @State var started = false
    @State var isDegrees = true
    
    var body: some View {
        NavigationView {
            VStack{
                Spacer()
                
                HStack{
                    Spacer()
                    
                    VStack(spacing: 40){
                        Spacer()
                        
                        Text("Trigonomatry Quiz")
                            .font(.largeTitle)
                        
                        Spacer()
                        
                        NavigationLink{
                            
                            let quiz = Quiz(d: isDegrees)
                            
                            AllQuestionsView(theQuiz: quiz)
                                
                        } label: {
                            GenericButtons(text: "Begin")
                        }
                    }
                    Spacer()
                        
                }.foregroundColor(.black)
                Spacer()
            }
            Spacer()
        }
        .background(Color(.init(red: 0.3, green: 0.6, blue: 0.6, alpha: 1.0)))
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
