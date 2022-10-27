//
//  geometry.swift
//  TestSwiftUI
//
//  Created by admin on 08.07.2022.
//

import SwiftUI

struct geometry: View {
    @State var hideTab = false
    @State var myOffset: CGFloat = 0
    
    var body: some View {
        VStack(spacing:0){
            
            Text("Hide me")
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .frame(height: 300)
                .background(
                    Color.blue
                )
                .offset(y: hideTab ? myOffset : 0)
            
            
            Home1(hideTab: $hideTab, myOffset: $myOffset)
                .offset(y: hideTab ? myOffset : 0)
                
                
            
            
            
        }
    }
}

struct geometry_Previews: PreviewProvider {
    static var previews: some View {
        geometry()
    }
}



struct Home1: View {
//    var topEdge:CGFloat
    
    @Binding var hideTab:Bool
    @Binding var myOffset: CGFloat
    @State var offset: CGFloat = 0
    @State var lastOffset: CGFloat = 0
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
           
            VStack {
                ForEach(0..<20) { i in
                    
                    VStack(){
                        Text("Элемент \(i)")
                            .foregroundColor(.white)
                            .padding()
                    }
                    .frame(maxWidth: .infinity)
                    .background(.gray)
                    
                    
                }
            }
            .padding(.horizontal, 20)
            .overlay(
            
                GeometryReader{ proxy -> Color in
                    let durationOffset:CGFloat = 0
                    let minY = proxy.frame(in: .named("SCROLL")).minY
                    DispatchQueue.main.async {
                        
                        if minY < offset {
                            print("up")
                            
                            if offset < 0 && -minY > (lastOffset + durationOffset) {
                                withAnimation(.easeOut.speed(1.5)) {
                                    hideTab = true
                                    if -myOffset < 100 {
                                        myOffset = offset
                                    }
                                   
                                }
                               lastOffset = -offset
                            }
                            
                        }
                        
                        if minY > offset && -minY < (lastOffset - durationOffset) {
                            print("down")
                            withAnimation(.easeInOut.speed(1.5)) {
                                hideTab = false
                                myOffset = offset
                            }
                           lastOffset = -offset
                        }
                        
                        self.offset = minY
                    }
                    return Color.clear
                }
            )
            
        }
        .coordinateSpace(name: "SCROLL")
        
    }
}

struct OffsetModifire: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .overlay(
            
                GeometryReader{proxy -> Color in
                    
                    let minY = proxy.frame(in: .global).minY
                    print(minY)
                    return Color.clear
                }
                , alignment: .top
            )
    }
    
}
