//
//  ContentView.swift
//  Code History
//
//  Created by Ryo Martin on 21/09/23.
//

import SwiftUI

struct GameView: View {
    
    @StateObject var viewModel = GameViewModel()
    
    let accentColor = Color(red: 48/255, green: 105/255, blue: 240/255)
    var body: some View {
        ZStack {
            GameColor.mainColor.ignoresSafeArea()
            VStack {
                Text(viewModel.questionProgressText)
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                QuestionView(question: viewModel.currentQuestion)
            }
            .background(
                NavigationLink(
                    destination: ScoreView(
                        viewModel:
                            ScoreViewModel(correctGuesses: viewModel.correctGuesses, incorrectGuesses: viewModel.incorrectGuesses)
                    ),
                    isActive: .constant(viewModel.gameIsOver),
                    label: {EmptyView()}
                )
            )
            .foregroundColor(.white)
            .environmentObject(viewModel)
            .navigationBarHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
