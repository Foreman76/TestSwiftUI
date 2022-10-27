//
//  CustomASheet.swift
//  TestSwiftUI
//
//  Created by admin on 02.06.2022.
//

import SwiftUI

struct CustomASheet: View {
    
    @State var showMenu:Bool = false
    
    var body: some View {
        ZStack{
            Image("launchfon1512")
                .resizable()
                .ignoresSafeArea()
            
            Button {
                withAnimation {
                    showMenu.toggle()
                }
                
            } label: {
                Text("Custom ActionSheet")
                    .foregroundColor(.white)
            }
            
           
            VStack{
                Spacer()
                CustomAS
                    .offset(y: self.showMenu ? 0 : UIScreen.main.bounds.height)
            }.background((self.showMenu ? Color.black.opacity(0.3): Color.clear).edgesIgnoringSafeArea(.all).onTapGesture {
                withAnimation {
                    showMenu.toggle()
                }
            })
            
            .edgesIgnoringSafeArea(.bottom)
            
        }
    }
}

extension CustomASheet {
    
private var CustomAS: some View {
   
        
        VStack(alignment: .center, spacing: 15){
            
            Button {
                print("")
            } label: {
                Text("Выбрать мастера")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .foregroundColor(.white)
                    .background(.orange)
                    .cornerRadius(25)
            }

            Button {
                print("")
            } label: {
                Text("Информация")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .foregroundColor(.white)
                    .background(.orange)
                    .cornerRadius(25)
            }
            Button {
                print("")
            } label: {
                Text("Оставить отзыв")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .foregroundColor(.white)
                    .background(.orange)
                    .cornerRadius(25)
            }
           
            Button {
                withAnimation {
                    showMenu.toggle()
                }
            } label: {
                Text("Отмена")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .foregroundColor(.white)
                    .background(.orange)
                    .cornerRadius(25)
            }
    
        }
        .frame(maxWidth: .infinity)
        .padding(.bottom, 10)
        .padding(.top, 20)
        .padding(.horizontal, 10)
        .background(.thinMaterial)
        .cornerRadius(25)

    }

}


struct CustomASheet_Previews: PreviewProvider {
    static var previews: some View {
        CustomASheet()
    }
}
