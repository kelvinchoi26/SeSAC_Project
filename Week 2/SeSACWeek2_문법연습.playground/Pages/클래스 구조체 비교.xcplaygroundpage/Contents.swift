//: [Previous](@previous)

import Foundation

// 변수/상수 -> 프로퍼티 (클래스/구조체/열거형에 들어가게 되면)
// 함수 -> 메서드
// 프로퍼티 + 메서드 = 멤버

// 옵셔널로 선언된 프로퍼티는 nil을 가질 수 있음, 나중에 초기화 해도됨
class Monster {
    var name = "초보몬스터"
    var level = 1
}

let easy = Monster()

var hard = easy

hard.name = "보스몬스터"
hard.level = 100

//: [Next](@next)
