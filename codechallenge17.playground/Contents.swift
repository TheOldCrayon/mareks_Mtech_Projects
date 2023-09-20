func getTimeOptionalEdition(seconds: Int?, minutes: Int?, hours: Int?) -> Int{
    var timeTotal = 0
    
    if let seconds = seconds {
        timeTotal += seconds
    }
    if let minutes = minutes {
        timeTotal += minutes * 60
    }
    if let hours = hours {
        timeTotal += hours * 3600
    }
    timeTotal *= 1000
    if timeTotal == 86400000 {
        print("it's midnight")
        return 0
    }
    print("the current time is \(timeTotal) milliseconds from midnight")
    return timeTotal
    
}

func geTime(seconds: Int, minutes: Int, hours: Int) -> Int{
    return (seconds + (minutes * 60) + (hours * 3600)) * 1000
}

getTimeOptionalEdition(seconds: 1, minutes: 1, hours: nil)
print(geTime(seconds: 1, minutes: 1, hours: 0))
