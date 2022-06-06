//
//  ProgressBar.swift
//  TrigQuiz
//
//  Created by 90307297 on 5/26/22.
//

import SwiftUI

struct ProgressBar: View {
    
    var progress: Double

    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(.white)
                .frame(width: width - 30, height: 20)
            HStack{
                Rectangle()
                    .frame(width: progress * (width - 30), height: 20)
                    .foregroundColor(.accentColor)
                
                Spacer()
            }
        }
        .padding()
        .background(.black)
    }
}

struct ProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBar(progress: 0.1)
    }
}
