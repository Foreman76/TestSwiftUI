////
////  TestDatePicker.swift
////  TestSwiftUI
////
////  Created by admin on 15.06.2022.
////
//
//import SwiftUI
//
//
//
//
//struct TestDatePicker: View {
//    
//    
//                                          
//    @State private var selectedDate = Date()
//    
//    let starDate = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
//    let endDate = Date()
//    var body: some View {
//        
//        VStack {
//            
//            if let d = getRange() {
//               
//                DatePicker("", selection: $selectedDate, in: m, displayedComponents: [.date])
//                    .accentColor(.red)
//                    .datePickerStyle(.graphical)
//            }
//     
//             Text("sdfasd")
//            
//           
//        }
//        
//        .background(.black.opacity(0.06))
//        .cornerRadius(20)
//        .padding()
//        
//    }
//    
//    
////    func getRange()  {
////        
////        
////        
////        let str = ["1", "2", "3", "4", "5"]
////        let num = [1, 5, 6, 7, 8, 3, 5]
////        print(num[0...])
////    }
//    
//    func getRange() -> [Date] {
//        
//        let formatter = DateFormatter()
//        formatter.dateFormat = "yyyy-MM-dd"
//        formatter.locale = Locale(identifier: "ru-RU")
//        formatter.timeZone = TimeZone(identifier: "KRAT")
//    
//        let arrNet = [
//            "2022-06-21",
//            "2022-06-23",
//            "2022-06-24",
//            "2022-06-25",
//            "2022-06-26",
//            "2022-06-28",
//            "2022-06-30"
//           
//        ]
//
//      
//
//        var arrayD = [Date]()
//
//        arrNet.forEach { strDate in
//            guard let d = formatter.date(from: strDate) else { return }
//            arrayD.append(d)
//        }
//
//        let m:ClosedRange<Date> = ClosedRange(uncheckedBounds: (lower: arrayD[0], upper: arrayD[5]))
//        m.
//        
//        
//        
//        return arrayD
//
//    }
//    
//}
//
//struct TestDatePicker_Previews: PreviewProvider {
//    static var previews: some View {
//        TestDatePicker()
//    }
//}
