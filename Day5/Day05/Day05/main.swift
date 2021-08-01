//
//  main.swift
//  Day05
//
//  Created by Biso on 2021/07/20.
//

import Foundation
/*
-------------
구조체 : Structure
  : Swift에서 Data Type을 정의
*/
struct Sample {
    var sampleProperty: Int = 10 // 가변 프로퍼티
    let fixedSampleProperty: Int = 100 // 불변 프로퍼티
    static var typeProperty: Int = 1000 // 타입 프로퍼티
    
    func instanceMethod() {
        print("instance method")
    }
    
    static func typeMethod() {
        //static은 instance로 사용할 수 없다.
        print("type method")
    }
}

// Structure 사용
var samp: Sample = Sample()
print(samp.sampleProperty)
samp.sampleProperty = 100
print(samp.sampleProperty)

var samp1 = Sample()
print(samp1.sampleProperty)

// Type Property
Sample.typeMethod()
print(Sample.typeProperty)


// 학생 구조체
struct Student {
    var name:String = "unknown"
    var class1:String = "Swift"
    
    static func selfIntroduce() {
        print("학생 타입 입니다.")
    }
    
    func selfIntoduce() {
//        print("저는 \(class1)반 \(name)입니다.")
        print("저는 \(self.class1)반 \(self.name)입니다.")
    }
}

Student.selfIntroduce()

var student: Student = Student()
student.name = "James"
student.class1 = "스위프트"
student.selfIntoduce()

let cathy: Student = Student()
//cathy.name = "Cathy"
//instance 자체가 let이면 값을 줘서 사용할 수 없다.
cathy.selfIntoduce()

// ----------------
// 학생 구조체
class Student1 {
    var name:String = "unknown"
    var class1:String = "Swift"
    
    static func selfIntroduce() {
        print("학생 타입 입니다.")
    }
    
    func selfIntoduce() {
//        print("저는 \(class1)반 \(name)입니다.")
        print("저는 \(self.class1)반 \(self.name)입니다.")
    }
}

Student1.selfIntroduce()
var student1: Student1 = Student1()
student1.name = "James"
student1.class1 = "스위프트"
student1.selfIntoduce()

let cathy1: Student1 = Student1()
//cathy.name = "Cathy"
//instance 자체가 let이면 값을 줘서 사용할 수 없다.
cathy1.selfIntoduce()

class Shape{
    var area:Double = 0
    var border:Double = 0
    var shape:String = "null"
    
    func selfIntroduce() {
        print("\(shape)의 면적은 \(String(format: "%.2f", area))이고, 둘레는 \(String(format: "%.2f", border))입니다.")
    }
    static func error() {
        print("입력값이 옳지 않습니다.")
    }
    
    func input(r:Double) {
        let pi = 3.14
        shape = "원"
        area = pi * r * r
        border = 2 * pi * Double(r)
       selfIntroduce()
    }
    func input(x:Double, y:Double) {
        shape = "직사각형"
        area = x * y
        border = (x + y) * 2
        selfIntroduce()
    }
    func input(x:Double, y:Double, h:Double) {
        shape = "직각삼각형"
        let x2 = pow(Double(x), 2.0)
        let y2 = pow(Double(y), 2.0)
        let h2 = pow(Double(h), 2.0)
        
        if x2+y2 == h2 {
            area = (x * y) / 2
            border = x + y + h
            selfIntroduce()
        }else {
            Shape.error()
        }
    }
    
}
let sh1: Shape = Shape()
let sh2: Shape = Shape()
let sh3: Shape = Shape()

sh1.input(r: 5) // 원의 면적과 둘레 구하기
sh2.input(x: 5, y: 6) // 직사각형의 면적과 둘레 구하기
sh3.input(x: 5, y: 6, h: 8)

class Shape1{
    var area = 0.0
    let pi = 3.14157
    
    //생성자
    init() {
        print("계산시작")
    }
    
    init(radius: Double) {
        area =  radius * radius * pi
        calc()
    }
    
    func input(r: Double) {
        area = r * r * pi
        calc()
    }
    
    func calc() {
        print("원의 면적은 \(Int(area))입니다.")
    }
}

let sh4: Shape1 = Shape1() //비어있는 생성자 실행됨
sh4.input(r: 5.0)
let sh5: Shape1 = Shape1(radius: 5.0)

class Shape2{
    var area:Double = 0
    var border:Double = 0
    var shape:String = "null"
    
    func selfIntroduce() {
        print("\(shape)의 면적은 \(String(format: "%.2f", area))이고, 둘레는 \(String(format: "%.2f", border))입니다.")
    }
    init(r:Double) {
        let pi = 3.14
        shape = "원"
        area = pi * r * r
        border = 2 * pi * Double(r)
       selfIntroduce()
    }
    init(x:Double, y:Double) {
        shape = "직사각형"
        area = x * y
        border = (x + y) * 2
        selfIntroduce()
    }
    init(x:Double, y:Double, h:Double) {
        shape = "직각삼각형"
        let x2 = pow(Double(x), 2.0)
        let y2 = pow(Double(y), 2.0)
        let h2 = pow(Double(h), 2.0)
        
        if x2+y2 == h2 {
            area = (x * y) / 2
            border = x + y + h
            selfIntroduce()
        }else {
            Shape.error()
        }
    }
}

let sh6: Shape2 = Shape2(x: 5, y: 6)

/*
Extension
구조체, 클래스, 프로토콜 타입에 새로운 기능을 추가할 수 있는 기능.
기존에 존재하는 기능은 재정의 할 수 없다.
*/

extension Int{
    var isEven:Bool {
        //self는 들어온 값
        return self % 2 == 0
    }
    var isOdd: Bool {
        return self % 2 == 1
    }
}

print(1.isEven)

/*
Delegate
*/



/*
 Closure와 함수
 */

//함수
func sumFunction(a:Int, b:Int) -> Int {
    return a + b
}

var sumResult: Int = sumFunction(a: 10, b: 20)
print(sumResult)

//Closure
var sumClosure: (Int, Int) -> Int = {(a: Int, b: Int) -> Int in
    return a + b
}

sumResult = sumClosure(50,20)
print(sumResult)


Int.random(in: 1..<10)

func genNum() -> String {
    return String(Int.random(in: 1..<10))
}





































