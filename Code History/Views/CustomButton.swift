//
//  CustomButton.swift
//  Code History
//
//  Created by Ryo Martin on 21/09/23.
//

import SwiftUI

struct CustomButton: View {
    var testEl: () -> Void
    let labelText: String
    var answerIndex: Color
    
    
    var body: some View {
        Button(
            action: {
                print("Tapped on \(labelText)")
                testEl()
            },
            label: {
                CustomButtonTextView(choiceText: labelText)
            }
        )
    }
}

struct CustomButtonTextView: View {
    let choiceText: String
    
    var body: some View {
        Text(choiceText)
            .font(.body)
            .bold()
            .multilineTextAlignment(.center)
            .padding()
            .border(GameColor.accentColor, width: 4)
    }
    
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(testEl: {}, labelText: "Test", answerIndex: GameColor.accentColor)
    }
}
