//
//  ContentView.swift
//  Code History
//
//  Created by Ryo Martin on 21/09/23.
//

import SwiftUI

struct ContentView: View {
    let question = Question(questionText: "What was the first computer bug?", possibleAnswers: ["Ant", "Beetle", "Moth", "Fly"], correctAnswerIndex: 2)
    @State var mainColor = Color(red: 20/255, green: 28/255, blue: 58/255)
    let accentColor = Color(red: 48/255, green: 105/255, blue: 240/255)
    var body: some View {
        ZStack {
            mainColor.ignoresSafeArea()
            VStack {
                Text("1/10")
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
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
                            mainColor = answerIndex == question.correctAnswerIndex ? .green : .red
                            },
                            labelText: question.possibleAnswers[answerIndex],
                            answerIndex: answerIndex == question.correctAnswerIndex ? .green : .red
                        )
                    }
                }
            }.foregroundColor(.white)
        }
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
