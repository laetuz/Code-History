//
//  CustomButton.swift
//  Code History
//
//  Created by Ryo Martin on 21/09/23.
//

import SwiftUI

struct CustomButton: View {
    let mainColor = Color(red: 20/255, green: 28/255, blue: 58/255)
    let accentColor = Color(red: 48/255, green: 105/255, blue: 240/255)
    let labelText: String
    
    var body: some View {
        Button(
            action: {
                print("Tapped on \(labelText)")
            },
            label: {
                Text(labelText)
                    .font(.body)
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding()
                    .border(accentColor, width: 4)
            }
        )
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(labelText: "Test")
    }
}
