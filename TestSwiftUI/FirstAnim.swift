//
//  FirstAnim.swift
//  TestSwiftUI
//
//  Created by admin on 14.09.2022.
//

import SwiftUI

struct FirstAnim: View {
    
    @State private var change = false
    
    var body: some View {
        VStack(spacing: 20){
            Circle()
                .foregroundColor(.orange)
                .frame(width: 100, height: 100, alignment: .center)
                .offset(x: change ? 120 : 0, y: change ? 300 : 0)
                .animation(.spring(response: 0.5, dampingFraction: 1.0, blendDuration: 1.0), value: change)
            
            Spacer()
            
            Button {
                change.toggle()
            } label: {
                Text("Change")
            }

        }
    }
}

struct FirstAnim_Previews: PreviewProvider {
    static var previews: some View {
        FirstAnim()
    }
}
