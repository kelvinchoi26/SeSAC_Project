import UIKit

//반환값: 100% 상황에 대한 대응이 가능해야함
func example() -> String {
    let result = Int.random(in: 1...100)
    
    if result > 50 {
        return "UP"
    } else {
        return "DOWN"
    }
    
//    return "DOWN"
    
//    return result > 50 ? "UP" : "DOWN"
}

example()

class Monster {
    var clothes = "Orange + Christmas"
    var speed = 5
    var power = 20
    var expoint: Double = 5000
    
    func attack() {
        print("공격!")
    }
}

var easyMonster = Monster()
easyMonster.clothes
easyMonster.power

easyMonster.attack()
easyMonster.attack()

// 겹치는 기능들이 많으니 Monster 클래스로부터 상속
class BossMonster: Monster {
    var levelLimit = 500
    
    func bossAttack() {
        print("스페셜 공격!")
    }
    // 재정의
    override func attack() {
        // 슈퍼클래스의 함수도 실행해주고 싶을 때 super로 불러옴
        super.attack()
        print("오버라이드 공격!")
    }
}

var finalBoss = BossMonster()
finalBoss.clothes

// struct는 상속이 불가능하다
// 구조체는 값 타입, 클래스는 참조 타입

