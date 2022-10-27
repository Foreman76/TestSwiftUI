//
//  TestZStack.swift
//  TestSwiftUI
//
//  Created by admin on 18.10.2022.
//

import SwiftUI

struct TestZStack: View {
    var body: some View {
        VStack(spacing: 10){
            ZStack(alignment: .bottom){
                Image("headershort")
                    .resizable()
                    .frame(width: .infinity, height: 200)
                    .overlay {
                        Color.black.opacity(0.5)
                    }
                
                HStack(spacing: 20) {
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "chevron.left")
                            .font(.title.bold() )
                            .foregroundColor(.white)
                    }
                    
                    Spacer()
                    
                    VStack(spacing: 10) {
                        
                        Text("Октябрь")
                            .foregroundColor(.white)
                            .font(.title.bold())
                        
                        Text("2022")
                            .foregroundColor(.white)
                            .font(.caption)
                            .fontWeight(.semibold)
                    }
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "chevron.right")
                            .font(.title.bold())
                            .foregroundColor(.white)
                    }
                    
                }
                .padding(.horizontal)
                .padding(.bottom)
                
            }
            
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 0){
                   Text("Hello")
                        .frame(maxWidth: .infinity)
                }
            }
            
                       
            Spacer()
        }
        .background(.red.opacity(0.4))
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct TestZStack_Previews: PreviewProvider {
    static var previews: some View {
        TestZStack()
    }
}
