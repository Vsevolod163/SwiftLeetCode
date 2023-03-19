// Определить выходной сегодня или нет

enum Weekday: String {
    case monday = "Понедельник"
    case tuesday = "Вторник"
    case wednesday = "Среда"
    case thursday = "Четверг"
    case friday = "Пятница"
    case saturday = "Суббота"
    case sunday = "Воскресенье"
}

let day: Weekday = .sunday
day.rawValue
let workDay = "Рабочий день"
let weekend = "Выходной"

switch day {
case .monday:
    print("\(day.rawValue) - \(workDay)")
case .tuesday:
    print("\(day.rawValue) - \(workDay)")
case .wednesday:
    print("\(day.rawValue) - \(workDay)")
case .thursday:
    print("\(day.rawValue) - \(workDay)")
case .friday:
    print("\(day.rawValue) - \(workDay)")
case .saturday:
    print("\(day.rawValue) - \(weekend)")
case .sunday:
    print("\(day.rawValue) - \(weekend)")
}
