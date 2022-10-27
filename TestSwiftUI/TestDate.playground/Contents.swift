import UIKit
import Foundation

var greeting = "Hello, playground"


////formatter.string(from: m)
//let d = formatter.date(from: "2022-06-23T16:30:00+0700")
//
//formatter.string(from: d!)


//var humanStringDate = ""
//let dateFormater = DateFormatter()
//dateFormater.locale = Locale(identifier: "ru-RU")
//dateFormater.timeZone = .current
//dateFormater.setLocalizedDateFormatFromTemplate("dd MMMM yyyy HH:mm")
//
// let isoFormater = ISO8601DateFormatter()
// isoFormater.formatOptions = [.withFullDate, .withFullTime, .withDashSeparatorInDate]
//
// isoFormater.timeZone = .current
//
// if let realDate = isoFormater.date(from: "2022-06-23T16:30:00+0700"){
//           humanStringDate = dateFormater.string(from: realDate)
//     }
//print(humanStringDate)
//
let formatter = DateFormatter()

formatter.dateFormat = "yyyy-MM-dd" // 'T'hh:mm:ss"
//
formatter.locale = Locale(identifier: "ru-RU")
formatter.timeZone = TimeZone(identifier: "KRAT")

var strDate = "2022-05-20 17:00:00"
let mass = strDate.split(separator: " ")
var lTime = String(mass[1])

let range = lTime.index(lTime.endIndex, offsetBy: -3)..<lTime.endIndex
lTime.removeSubrange(range)

let d0 = formatter.date(from: String(mass[0]))
//let d1 = formatter.date(from: String(mass[1]))

//let d = Calendar.current.date(byAdding: .day, value: 1, to: Date())
//
//if d! > d1! {
//    print("true")
//}else{
//    print("false")
//}

//formatter.dateFormat = "dd MMMM yyyy"
//let m = formatter.string(from: d!)

//var userPhone = "+7 908 014-13-76"
//
//let arrayChar:[String] = ["+", " ", "-"]
//
//arrayChar.forEach { str in
//    userPhone = userPhone.replacingOccurrences(of: str, with: "")
//}
//print(userPhone, terminator: "")
//userPhone = userPhone.replacingOccurrences(of: "-", with: "")
//userPhone = userPhone.replacingOccurrences(of: " ", with: "")
//userPhone = userPhone.replacingOccurrences(of: "+", with: "")

// "2022-05-20 17:00:00"



