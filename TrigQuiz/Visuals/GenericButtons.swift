//
//  GenericButtons.swift
//  TrigQuiz
//
//  Created by 90307297 on 5/26/22.
//

import SwiftUI

struct GenericButtons: View {
    
    let text: String
    
    var body: some View {
                
        Text(text)
            .font(.title)
            .bold()
            .padding()
            .background(.white)
            .cornerRadius(10)

    }
}

struct GenericButtons_Previews: PreviewProvider {
    static var previews: some View {
        GenericButtons(text: "Hello")
    }
}
