//
//  main.swift
//  Day04
//
//  Created by HyeonJoonYang on 2021/07/19.
//

import Foundation

// 함수

func interSum(a: Int, b: Int) -> Int { //return값이 없을 때 void를 쓰는 경우도 있음
    return a + b
}

print(interSum(a: 5, b: 6))

func great(person: String) -> String {
    return "Hello, \(person)!"
}

print(great(person: "Anna"))

func sayHelloWorld() -> String {
    return "Hello, World!"
}

print(sayHelloWorld())
                                                                //parameter의 변수명
func buildAddress(_ name: String, address: String, city: String, 우편번호 zipCode: String, country: String? = "USA") -> String {
    return """
        \(name),\(address),\(city),\(zipCode),\(country ?? "비어있음")
        """
}

print(buildAddress("양서린", address: "송파구 석촌동", city: "서울", 우편번호: "05610", country: "한국"))
print(buildAddress("양서린", address: "송파구 석촌동", city: "서울", 우편번호: "05610", country: nil))
print(buildAddress("장비", address: "중국", city: "북경", 우편번호: "1234"))

// 가변 매개변수
func sayHelloFriends(me: String, friend: String...) -> String {
    return "Hello \(friend)! I'm \(me)."
}

print(sayHelloFriends(me: "양서린", friend: "초선", "손책", "손견"))


func getCountry() -> (dialCode: String, isoCode: String) {
    let returnValue = ("82", "KR")
    return returnValue
}


let ret = getCountry()
print(ret)
print(ret.isoCode)


// 시작 숫자 부터 끝 숫자까자의 합계를 구하는 함수
// 1) for문
func addRange1(start:Int, end: Int) -> String {
    var tot: Int = 0
    for i in start...end {
        tot += i
    }
    return "\(start)부터 \(end)까지의 합은 \(tot)입니다."
}
// 2) while문
func addRange2(start:Int?, end: Int) -> String {
    var tot: Int = 0
    var start: Int = start ?? 1
    while start<=end {
        tot += start
        start += 1    }
    return "\(start-end)부터 \(end)까지의 합은 \(tot)입니다."
}
print(addRange1(start:1, end:100))
print(addRange2(start:1, end:100))


// OverLoading : 함수의 이름은 중복돼도 parameter의 갯수로 구분이 가능하다.
// 도형의 면적과 둘레를 구하는 함수

//원
func shape(_ r: Double) {
    let pi = 3.14
    let area = pi * r * r
    let border = 2 * pi * r
    print("원 : \(area), \(String(format: "%.2f", border))")
}
shape(5)

//직사각형
func shape(_ w: Int, _ h: Int) {
    let area = w * h
    let border = (w + h) * 2
    print("직사각형 : \(area), \(String(format: "%.2f", border))")
}
shape(5, 6)

func shape(_ w: Int, _ h: Int, _ t: Int) {
    let w2 = pow(Double(w), 2.0)
    let h2 = pow(Double(h), 2.0)
    let t2 = pow(Double(t), 2.0)
    
    if w2+h2 == t2 {
        let area = (w * h) / 2
        let border = w + h + t
        print("직각삼각형 : \(area), \( border)")
    }else {
        print("입력값이 옳지 않습니다.")
    }
}
shape(3, 4, 5)

/*
Class : 전통적인 OOP관점에서의 클래스
 - 단일 상속
 - property
 - constructor
 - method
 - 참조 타입 선언 (Call by refernece)
 
Struct :
 - 상속 불가
 - property
 - constructor
 - method
 - 값 타입 선언 (Call by value)
 */

// Class와 Struct의 복제 비교
struct ValueType {
    var property = 1
}

class ReferenceType {
    var property = 1
}

let firstStructInstance: ValueType = ValueType()
var secondStructInstance = firstStructInstance
secondStructInstance.property = 2
print("first: \(firstStructInstance.property)& \(firstStructInstance)\nsencond: \(secondStructInstance.property)& \(secondStructInstance)")

let firstClassInstance: ReferenceType = ReferenceType()
var secondClassInstance = firstClassInstance
secondClassInstance.property = 2

print("first: \(firstClassInstance.property)& \(firstClassInstance)\nsencond: \(secondClassInstance.property)& \(secondClassInstance)")

