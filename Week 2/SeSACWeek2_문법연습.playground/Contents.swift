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
