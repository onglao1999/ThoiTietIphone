//
//  FakeData.swift
//  ThoiTietIphone
//
//  Created by Ong_Lao_Ngao on 5/28/20.
//  Copyright © 2020 Ong_Lao_Ngao. All rights reserved.
//

import Foundation
struct weatherMonth {
    var day: String
    var wartherImage: String
    var temperature1: String
    var temperature2: String
    var weatherDay: [weatherDay]
}

struct weatherDay {
    var hours: String
    var temperature: String
    var weatherData: String
}

func fakeData() -> [weatherMonth] {
    let day1 = weatherDay.init(hours: "1", temperature: "25", weatherData: "1")
    let day2 = weatherDay.init(hours: "2", temperature: "26", weatherData: "1")
    let day3 = weatherDay.init(hours: "3", temperature: "27", weatherData: "2")
    let day4 = weatherDay.init(hours: "4", temperature: "28", weatherData: "1")
    let day5 = weatherDay.init(hours: "5", temperature: "28", weatherData: "2")
    let day6 = weatherDay.init(hours: "6", temperature: "29", weatherData: "1")
    let day7 = weatherDay.init(hours: "7", temperature: "28", weatherData: "2")
    let day8 = weatherDay.init(hours: "8", temperature: "29", weatherData: "1")
    let day9 = weatherDay.init(hours: "9", temperature: "25", weatherData: "1")
    let day10 = weatherDay.init(hours: "10", temperature: "25", weatherData: "1")
    let day11 = weatherDay.init(hours: "11", temperature: "25", weatherData: "1")
    let day12 = weatherDay.init(hours: "12", temperature: "25", weatherData: "1")
    let day13 = weatherDay.init(hours: "13", temperature: "25", weatherData: "2")
    let day14 = weatherDay.init(hours: "14", temperature: "25", weatherData: "1")
    let day15 = weatherDay.init(hours: "15", temperature: "25", weatherData: "1")
    let day16 = weatherDay.init(hours: "16", temperature: "25", weatherData: "1")
    let day17 = weatherDay.init(hours: "17", temperature: "25", weatherData: "1")
    let day18 = weatherDay.init(hours: "18", temperature: "25", weatherData: "2")
    let day19 = weatherDay.init(hours: "19", temperature: "25", weatherData: "1")
    let day20 = weatherDay.init(hours: "20", temperature: "25", weatherData: "2")
    let day21 = weatherDay.init(hours: "21", temperature: "25", weatherData: "1")
    let day22 = weatherDay.init(hours: "22", temperature: "25", weatherData: "1")
    let day23 = weatherDay.init(hours: "23", temperature: "25", weatherData: "2")
    let day24 = weatherDay.init(hours: "24", temperature: "25", weatherData: "1")
    
    let demo2 = weatherMonth.init(day: "Thứ 2", wartherImage: "1", temperature1: "22", temperature2: "23", weatherDay: [day1, day2,day3, day4,day5,day6,day7,day8,day9,day10,day11,day12,day13,day14,day15,day16,day17,day18,day19,day20,day21,day22,day23,day24])
    let demo3 = weatherMonth.init(day: "Thứ 3", wartherImage: "1", temperature1: "22", temperature2: "23", weatherDay: [day1, day2,day3, day4,day5,day6,day7,day8,day9,day10,day11,day12,day13,day14,day15,day16,day17,day18,day19,day20,day21,day22,day23,day24])
     let demo4 = weatherMonth.init(day: "Thứ 4", wartherImage: "1", temperature1: "22", temperature2: "23", weatherDay: [day1, day2,day3, day4,day5,day6,day7,day8,day9,day10,day11,day12,day13,day14,day15,day16,day17,day18,day19,day20,day21,day22,day23,day24])
     let demo5 = weatherMonth.init(day: "Thứ 5", wartherImage: "1", temperature1: "22", temperature2: "23", weatherDay: [day1, day2,day3, day4,day5,day6,day7,day8,day9,day10,day11,day12,day13,day14,day15,day16,day17,day18,day19,day20,day21,day22,day23,day24])
     let demo6 = weatherMonth.init(day: "Thứ 6", wartherImage: "1", temperature1: "22", temperature2: "23", weatherDay: [day1, day2,day3, day4,day5,day6,day7,day8,day9,day10,day11,day12,day13,day14,day15,day16,day17,day18,day19,day20,day21,day22,day23,day24])
     let demo7 = weatherMonth.init(day: "Thứ 7", wartherImage: "1", temperature1: "22", temperature2: "23", weatherDay: [day1, day2,day3, day4,day5,day6,day7,day8,day9,day10,day11,day12,day13,day14,day15,day16,day17,day18,day19,day20,day21,day22,day23,day24])
     let democn = weatherMonth.init(day: "CN", wartherImage: "1", temperature1: "22", temperature2: "23", weatherDay: [day1, day2,day3, day4,day5,day6,day7,day8,day9,day10,day11,day12,day13,day14,day15,day16,day17,day18,day19,day20,day21,day22,day23,day24])
    
    return [demo2,demo3,demo4,demo5,demo6,demo7,democn]
}
