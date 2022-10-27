//
//  TestLink.swift
//  TestSwiftUI
//
//  Created by admin on 05.07.2022.
//

import SwiftUI

struct TestLink: View {
    var body: some View {
        
        Link("Visit Apple", destination: URL(string: "https://www.apple.com")!)
            .font(.title)
            .foregroundColor(.red)
        
    }
}

struct TestLink_Previews: PreviewProvider {
    static var previews: some View {
        TestLink()
    }
}
