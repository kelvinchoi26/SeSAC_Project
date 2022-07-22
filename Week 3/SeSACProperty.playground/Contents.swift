import UIKit

enum DrinkSize {
    case short, tall, grande, venti
}

class DrinkClass {
    let name: String
    var count: Int
    var size: DrinkSize
    
    init(name: String, count: Int, size: DrinkSize) {
        self.name = name
        self.count = count
        self.size = size
    }
}

struct DrinkStruct {
    let name: String
    var count: Int
    var size: DrinkSize
}

let drinkClass = DrinkClass(name: "스무디", count: 2, size: .venti)
drinkClass.count = 5
drinkClass.size = .tall

print(drinkClass.name, drinkClass.count, drinkClass.size)

var drinkStruct = DrinkStruct(name: "스무디", count: 2, size: .grande)
drinkStruct.count = 10
drinkStruct.size = .venti

print(drinkClass.name, drinkClass.count, drinkClass.size)


// 영화 타이틀, 러닝타임, 영상/화질좋은 포스터

struct Poster {
    var image: UIImage = UIImage(named: "star") ?? UIImage()
    
    init() {
        print("Poster Initialized")
    }
}

struct MediaInfo {
    var mediaTitle: String
    var mediaRuntime: Int
    lazy var mediaPoster: Poster = Poster()
    // 필요할 때 사용할 때 메모리에 올라감
}

var media = MediaInfo(mediaTitle: "오징어게임", mediaRuntime: 123)
