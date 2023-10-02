//
//  ScoreView.swift
//  Code History
//
//  Created by Ryo Martin on 02/10/23.
//

import SwiftUI

struct ScoreView: View {
    let viewModel: ScoreViewModel
    
    var body: some View {
        ZStack {
            GameColor.mainColor.ignoresSafeArea()
            VStack {
                Spacer()
                Text("Final Score: ")
                    .font(.body)
                Text("\(viewModel.percentage) %")
                    .font(.system(size: 50))
                    .bold()
                    .padding()
                Spacer()
                VStack {
                    Text("\(viewModel.correctGuesses) ✅")
                    Text("\(viewModel.incorrectGuesses) ❌")
                }.font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).bold()
                Spacer()
                NavigationLink(destination: GameView(), label: {
                    BottomTextView(str: "Re-take Quiz")
                })
            }
            .foregroundColor(.white)
            .navigationBarHidden(true)
        }
    }
}

struct ScoreView_Previews: PreviewProvider {
  static var previews: some View {
    ScoreView(viewModel: ScoreViewModel(correctGuesses: 8, incorrectGuesses: 2))
  }
}
