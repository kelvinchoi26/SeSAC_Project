import UIKit
import Darwin

// 1. 옵셔널 바인딩: if-let, guard

// ex. 쇼핑 리스트 추가
var shoppingList: String? = "신발 사기"
var shoppingList2: String? = "모니터 사기"

if shoppingList != nil && shoppingList2 != nil {
    print("\(shoppingList!), \(shoppingList2!) 완료!")
} else {
    print("글자를 입력해주세요")
}

// 2글자 이상을 꼭 입력해야 한다면?

shoppingList = nil // nil의 경우 string 타입으로 해제가 안됨

// if문에서는 선언한 상수를 조건문 안에서만 사용 가능
// 2에서 6글자 사이의 단어인지 확인!
if let value = shoppingList, let jack = shoppingList2, (2...6).contains(jack.count) == true { // shoplist: optional string type > jack: string type
    print("\(value), \(jack) 완료!")
} else {
    print("글자를 입력해주세요")
}

// guard문에서 선언한 상수들은 스코프가 해당하는 범위내에서 사용 가능
func optionalBindingFunction() {
    guard let jack = shoppingList, let value = shoppingList2, (2...6).contains(jack.count) else {
        print("글자를 입력해주세요")
        return
    }
    
    print("\(jack) \(value) 완료!")
}

// 2. 인스턴스 프로퍼티 vs. 타입 프로퍼티

class User {
    var nickname = "고래밥" // 저장 프로퍼티, 인스턴스 프로퍼티
    static var staticNickname = "고래밥" // 저장 프로퍼티, 타입 프로퍼티, 무조건 초기값을 가지고 있어야됨
}

let user = User() // 클래스 초기화, 인스턴스 생성
user.nickname

User.staticNickname // 호출이 되는 순간 메모리에 올라감. 인스턴스를 생성한다고 해서 초기화 되지 않고, 사용할 때 초기화됨.
