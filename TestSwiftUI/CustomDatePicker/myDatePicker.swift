//
//  myDatePicker.swift
//  TestSwiftUI
//
//  Created by admin on 16.06.2022.
//

import SwiftUI

struct DateValue: Identifiable {
    var id = UUID().uuidString
    var day: Int
    var date: Date
}

struct myDatePicker: View {
    
    @StateObject var vm = VMDatePicker()
    @Binding var currentDate: Date
    @State var currentMonth: Int = 0
    
    
    var body: some View {
        
        
        VStack {
            VStack(spacing: 35) {
                
                let days: [String] = ["ВС", "ПН", "ВТ", "СР", "ЧТ", "ПТ", "СБ"]
                HStack(spacing: 20){
                    VStack(alignment: .leading, spacing: 10) {
                        Text(extraDate()[1])
                            .font(.caption)
                            .fontWeight(.semibold)
                        Text(extraDate()[0])
                            .font(.title.bold())
                    }
                    
                    Spacer()
                    
                    Button {
                        
                        withAnimation {
                            currentMonth -= 1
                        }
                        
                    } label: {
                        Image(systemName: "chevron.left")
                            .font(.title2)
                    }
                    
                    Button {
                        withAnimation {
                            currentMonth += 1
                        }
                    } label: {
                        Image(systemName: "chevron.right")
                            .font(.title2)
                    }
                    
                    
                }
                .padding(.horizontal)
                
                HStack(spacing: 0){
                    ForEach(days, id: \.self) { day in
                        Text(day)
                            .font(.callout)
                            .fontWeight(.semibold)
                            .frame(maxWidth: .infinity)
                        
                    }
                }
                
                //             Dates......
                let columns = Array(repeating: GridItem(.flexible()), count: 7)
                LazyVGrid(columns: columns, spacing: 15) {
                    
                    ForEach(extractDate()) { value in
                        
                        CardView(value: value)
                            .background(
                                Capsule()
                                    .fill(.orange)
                                    .opacity(isSameDate(date1: value.date, date2: currentDate) ? 1 : 0)
                                    
                            )
                            .onTapGesture {
                                currentDate = value.date
                            }
                    }
                }
                .padding(.bottom, 5)
            
                
            }
            .onChange(of: currentMonth) { newvalue in
                currentDate = getCurrentMonth()
            }
            .background(.gray.opacity(0.5))
            .cornerRadius(10)
            .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
        }
        
        Text("\(currentDate)")
    }
    
    
    
}


extension myDatePicker {
    
    
    @ViewBuilder
    func CardView(value: DateValue) -> some View {
        VStack {
            if value.day != -1 {
                
                Text("\(value.day)")
                    .font(.title3.bold())
                    .foregroundColor(vm.workDays.contains(value.date) ? .white : .black.opacity(0.2))
                
            }
            
        }
        
    }
    
    
    func isSameDate(date1: Date, date2: Date) -> Bool {
        let calendar = Calendar.current
        return calendar.isDate(date1, equalTo: date2, toGranularity: .day)
    }
    
    
    
    func extraDate() -> [String] {
        
        
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "ru-RU")
        formatter.timeZone = TimeZone(identifier: "KRAT")
        formatter.dateFormat = "MMMM YYYY"
        let strDate = formatter.string(from: currentDate)
        return strDate.components(separatedBy: " ")
    }
    
    
    func getCurrentMonth() -> Date {
        let calendar = Calendar.current
        
        guard let currentMonth = calendar.date(byAdding: .month, value: self.currentMonth, to: Date()) else { return Date()}
        return currentMonth
    }
    
    func extractDate() -> [DateValue] {
        let calendar = Calendar.current
        let currentMonth = getCurrentMonth()
        
        var days =  currentMonth.getAllDates().compactMap { date -> DateValue in
            let day = calendar.component(.day, from: date)
            return DateValue(day: day, date: date)
        }
        
        let firstWeekday = calendar.component(.weekday, from: days.first?.date ?? Date())
        for _ in 0..<firstWeekday - 1 {
            days.insert(DateValue(day: -1, date: Date()), at: 0)
        }
        
        return days
    }
    
}


extension Date {
    
    
    func getAllDates() -> [Date] {
        
        let calendar = Calendar.current
        
        let startDate = calendar.date(from: calendar.dateComponents([.year, .month], from: self))!
        
        
        let range = calendar.range(of: .day, in: .month, for: startDate)
        
        
        guard let range = range else { return [] }
        
        return range.compactMap {day -> Date in
            
            return calendar.date(byAdding: .day, value: day - 1, to: startDate)!
        }
        
    }
}

struct myDatePicker_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
