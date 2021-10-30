import UIKit

struct MyStructure{
    var message = "hello"
    
    func myFunc() {
        print(message)
    }
}
// 인스턴스 생성하고난후에 struct를 변수의 데이터로 할당한다면 데이터타입은 struct 이름 그자체다.
var a : MyStructure = MyStructure()

// Dot Notation을 활용해서 struct안에 있는 property혹은 method를 불러올 수 있다.
a.message = "hi"
print(a.message)

var b : MyStructure = MyStructure()
print(b.message)
