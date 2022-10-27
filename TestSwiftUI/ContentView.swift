//
//  ContentView.swift
//  TestSwiftUI
//
//  Created by admin on 03.05.2022.
//

import SwiftUI
import iPhoneNumberField

struct ContentView: View {
    @State var isError = false
    @State var userPhone:String = ""
    var body: some View {
        
        iPhoneNumberField("000 000-00-00", text: $userPhone)
            .defaultRegion(Locale.current.regionCode)
            .flagHidden(false)
            .flagSelectable(true)
            .prefixHidden(false)
            .maximumDigits(10)
            .keyboardType(.numberPad)
            .padding()
            .background(Color.gray.opacity(0.2))
            .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
            .padding(.horizontal, 30)
        
        Text(userPhone)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portraitUpsideDown)
    }
}
