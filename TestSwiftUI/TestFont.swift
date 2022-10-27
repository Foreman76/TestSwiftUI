//
//  TestFont.swift
//  TestSwiftUI
//
//  Created by admin on 21.06.2022.
//

import SwiftUI

struct TestFont: View {
    var body: some View {
        VStack {
            
            Text("BarberStyle")
                .font(Font.custom("DancingScript-VariableFont_wght", size: 60))
                .foregroundColor(.white)
                .fontWeight(.light)
                .padding()
                .background(.black)
            
            Text("BarberStyle")
                .font(Font.custom("DancingScript-SemiBold", size: 60))
                .foregroundColor(.white)
                .padding()
                .background(.black)
            
            Text("BarberStyle 2")
                .font(Font.custom("DancingScript-Bold", size: 40))
                .foregroundColor(.orange)
                .fontWeight(.bold)
                .padding()
                .background(.black)
            
            Text("BarberStyle 1")
                .font(Font.custom("Satisfy-Regular", size: 60))
                .foregroundColor(.orange)
                .padding()
                .background(.black)
            
            Text("MacDonalds")
                .font(Font.custom("DancingScript-Bold", size: 40))
                .foregroundColor(.orange)
                .fontWeight(.bold)
                .padding()
                .background(.black)
        }
            
    }
}

struct TestFont_Previews: PreviewProvider {
    static var previews: some View {
        TestFont()
    }
}

// DancingScript-VariableFont_wght.ttf
