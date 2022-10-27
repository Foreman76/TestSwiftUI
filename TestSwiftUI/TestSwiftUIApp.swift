//
//  TestSwiftUIApp.swift
//  TestSwiftUI
//
//  Created by admin on 03.05.2022.
//

import SwiftUI

@main
struct TestSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            TestZStack()
                .preferredColorScheme(.dark)
        }
    }
}
