//
//  QuestionVIew.swift
//  Code History
//
//  Created by Ryo Martin on 02/10/23.
//

import SwiftUI

struct QuestionView: View {
    @EnvironmentObject var viewModel: GameViewModel
    let question: Question
    
    var body: some View {
        VStack {
            Text(question.questionText)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.leading)
            Spacer()
            HStack {
                let possibleAns = question.possibleAnswers.count
                ForEach(0..<possibleAns) {
                    answerIndex in CustomButton(
                        testEl: {
                            print("Tapped on \(question.possibleAnswers[answerIndex])")
                            viewModel.makeGuess(atIndex: answerIndex)
                        },
                        labelText: question.possibleAnswers[answerIndex],
                        answerIndex: answerIndex == question.correctAnswerIndex ? .green : .red
                    )
                    .background(viewModel.color(forOptionIndex: answerIndex))
                    .disabled(viewModel.guessWasMade)
                }
            }
            if viewModel.guessWasMade {
                Button(
                    action: {viewModel.displayNextScreen()}){
                        BottomTextView(str: "Next")
                    }
            }
           
        }
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
      QuestionView(question: Game().currentQuestion)
    }
}
