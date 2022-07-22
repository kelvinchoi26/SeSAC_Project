struct Tamagotchi {
    static var water = 0
    static var rice = 0
    
    var title = 0
    var image = 0
}

let tama1 = Tamagotchi()
let tama2 = Tamagotchi()

Tamagotchi.water = 1
print(Tamagotchi.water)

Tamagotchi.water += 1
print(Tamagotchi.water)

Tamagotchi.rice += 1
print(Tamagotchi.rice)

