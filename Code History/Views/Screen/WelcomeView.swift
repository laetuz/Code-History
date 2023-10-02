//
//  WelcomeView.swift
//  Code History
//
//  Created by Ryo Martin on 30/09/23.
//

import SwiftUI

struct WelcomeView: View {
    let accentColor = Color(red: 48/255, green: 105/255, blue: 240/255)
    let mainColor = Color(red: 20/255, green: 28/255, blue: 58/255)
    
    var body: some View {
        NavigationView {
            ZStack {
                mainColor.ignoresSafeArea()
                VStack {
                    Spacer()
                    VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 0){
                        Text("Select the correct answers to the following questions.")
                            .font(.largeTitle)
                            .bold()
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                            .padding()
                    }
                    Spacer()
                    NavigationLink(destination: GameView(), label: {
                        BottomTextView(str: "Okay, let's go!")
                    })
                }
                .foregroundColor(.white)
            }
        }
        
    }
}

#Preview {
    WelcomeView()
}
