//
//  CustomHeader.swift
//  TestSwiftUI
//
//  Created by admin on 30.05.2022.
//

import SwiftUI

struct CustomHeader: View {
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack(spacing: 0){
                HeaderView()
                ListView()
                
                LazyVStack{
                    
                }
                
            }
        }
        .coordinateSpace(name: "SCROLL")
        .ignoresSafeArea(.container, edges: .vertical)
    }
    
    
    @ViewBuilder
    func ListView() -> some View {
        
        VStack() {
            ForEach(1...40, id: \.self){ index in
                Text("Card \(index)")
                    .foregroundColor(.white)
            }
           
                
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
        .padding(.bottom, 10)
        
    }
    
    @ViewBuilder
    func HeaderView()-> some View {
        GeometryReader{proxy in
            let minY = proxy.frame(in: .named("SCROLL")).minY
            let size = proxy.size
            let height = (size.height + minY)
            
            Image("sloganfon")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: size.width, height: height)
                .overlay(content: {
                    ZStack(alignment: .bottom) {
                        LinearGradient(colors: [.clear, .black.opacity(0.5)], startPoint: .top, endPoint: .bottom)
                        
                        VStack(alignment: .leading, spacing: 5){
                            Text("BarberStyle")
                                .font(Font.custom("SatisfyRegular.ttf", size: 20))
                                .foregroundColor(.white)
                                .padding(EdgeInsets(top: 0, leading: 15, bottom: 5, trailing: 0))
                            Text("стрижем и бреем")
                                .font(.caption)
                                .foregroundColor(.white)
                                .padding(EdgeInsets(top: 0, leading: 15, bottom: 10, trailing: 0))
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                    }
                })
                .cornerRadius(15)
                .offset(y: -minY)
                
            
        }
        .frame(height:250)
    }
    
}

struct CustomHeader_Previews: PreviewProvider {
    static var previews: some View {
        CustomHeader()
            .preferredColorScheme(.dark)
    }
}
