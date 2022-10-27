//
//  VMDatePicker.swift
//  TestSwiftUI
//
//  Created by admin on 16.06.2022.
//

import Foundation

class VMDatePicker: ObservableObject {
    
    @Published var workDays = [Date]()
    
    init()  {
        
        workDays = getRange()
    }
    
    func getRange() -> [Date] {
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        formatter.locale = Locale(identifier: "ru-RU")
        formatter.timeZone = TimeZone(identifier: "KRAT")
        
        let arrNet = [
            "2022-06-21",
            "2022-06-23",
            "2022-06-24",
            "2022-06-25",
            "2022-06-26",
            "2022-06-28",
            "2022-06-30",
            "2022-07-01",
            "2022-07-02",
            "2022-07-03",
            "2022-07-05",
            "2022-07-07",
            "2022-07-08",
            "2022-07-09",
            "2022-07-10",
            "2022-07-12",
            "2022-07-14",
            "2022-07-15",
            "2022-07-16",
            "2022-07-17",
            "2022-07-19",
            "2022-07-21",
            "2022-07-22",
            "2022-07-23",
            "2022-07-24",
            "2022-07-26",
            "2022-07-28",
            "2022-07-29",
            "2022-07-30",
            "2022-07-31"
            
        ]
        var arrayD = [Date]()
        
        arrNet.forEach { strDate in
            guard let d = formatter.date(from: strDate) else { return }
            arrayD.append(d)
        }
        
        return arrayD
    }
    
    
}
