//
//  Nav.swift
//  TestSwiftUI
//
//  Created by admin on 02.06.2022.
//

import SwiftUI
import UIKit

struct Nav: View {
    
   
    
    var body: some View {
        NavigationView{
            
            VStack{
                Text("One screen")
                
                NavigationLink("Next screen") {
                    TwoScreen()
                }
                .navigationBarHidden(true)
            }
            
            
        }
    }
}


struct TwoScreen: View {
//    init() {
//        let apperiance = UINavigationBarAppearance()
////        apperiance.configureWithOpaqueBackground()
//        apperiance.backgroundColor = UIColor(Color.gray.opacity(0.4))
//        apperiance.backgroundImage = UIImage(named: "sloganfon")
//        UINavigationBar.appearance().scrollEdgeAppearance = apperiance
//    }
    
    var body: some View {
        ZStack {
            Image("launchfon1512")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            VStack{
                VStack{
                    Text("Two screen")
                    NavigationLink("Next screen") {
                        ThreeScreen()
                    }
                    .navigationTitle("Two Screen")
                }
               
               
                
                VStack{
                    NavigationLink("Next screen") {
                        ThreeScreen()
                    }
                    
                }
                .frame(height: 350)
                .frame(maxWidth: .infinity)
                .background(.thinMaterial)
                .cornerRadius(30)
            }
            .background(Color.green)
        .ignoresSafeArea()
        }
    }
}

struct ThreeScreen: View {
    
    @Environment(\.presentationMode) var present
    
    var body: some View {
        
        
        ZStack {
            
            
            
            Color.green.opacity(0.5)
            ScrollView {
                VStack{
                    Text("ThreeScreen")
                    
                    Button {
                        present.wrappedValue.dismiss()
                    } label: {
                        Text("Back")
                    }
                    
                    ForEach(1...40, id: \.self){ index in
                        Text("Card \(index)")
                            .foregroundColor(.black)
                    }
                    
                    
                    
                }
                .frame(maxWidth: .infinity)
                .navigationTitle("Three screen")
                .navigationBarBackButtonHidden(true)
            }
            
        }
        .background(
            Image("launchfon1512")
                .resizable()
                .ignoresSafeArea()
        )
        
    }
}

struct Nav_Previews: PreviewProvider {
    static var previews: some View {
        Nav()
            .preferredColorScheme(.dark)
    }
}
