//
//  BottomTextView.swift
//  Code History
//
//  Created by Ryo Martin on 30/09/23.
//

import SwiftUI

struct BottomTextView: View {
    let str: String
    
    var body: some View {
        HStack {
            Spacer()
            Text(str)
                .font(.body)
                .bold()
                .padding()
            Spacer()
        }.background(GameColor.accentColor)
    }
}

#Preview {
    BottomTextView(str: "sdf")
}
