//
//  Home.swift
//  TestSwiftUI
//
//  Created by admin on 16.06.2022.
//

import SwiftUI

struct Home: View {
    
    @State var currentDate = Date()
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
            VStack(spacing: 20){
                myDatePicker(currentDate: $currentDate)
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
