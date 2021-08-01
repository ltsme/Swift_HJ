//
//  main.swift
//  SwiftBook
//
//  Created by HyeonJoonYang on 2021/08/01.
//

import Foundation

// print 메소드에서 terminator 사용 시 다음 줄로 넘어가지 않는다.
let first = "Steve"
let last = "Jobs"

print(first, terminator: "AND")
print(last)


// 한 줄 주석

var abc = /* 인라인 주석 */ 1;

/*
 블록 주석
*/


// 변수 선언
var intNum : Int

// 여러 변수 동시에 선언
var a, b, c: Int
var a2 : Int, b2 : Float, c2 : String

// 선언과 동시에 초기화 =
var a3 : Int = 1

//변수 선언 규칙
/*
 1. 변수의 이름은 소문자 시작이 관례이다.
 2. 숫자나 특수문자로는 시작할 수 없다, 예약어 또한 사용할수 없다. (ex: 34Num, print)
 3. lowerCamelCase 규칙을 사용한다. (ex: userNameInt)
*/


// 상수
// 상수의 값을 읽기 전에 반드시 초기화 되야 한다.
let b3 : Int
//print(b3) // 에러
b3 = 5

let b4 : Int = 5
print(b4)



// 문자열
/*
 문자열 - String
 문자 - Character
 따로 선언 하지 않을 경우, String으로 추론 된다.
*/

let str = "S" // String 으로 추론
let str2: Character = "S" // "S"를 문자열(String)이 아닌 문자(Character)로 저장 시, 반드시 선언

// 알리아스 (alias)
/*
 기존 자료형에 새로운 이름을 부여
 코드 가독성을 높이기 위해 쓴다.
*/
typealias Coordinate = Double // Double 역할을 하는 Coordinate(좌표) 변수 선언
var lat: Coordinate = 5
var lon: Coordinate = 6

print("좌표는 : ", lat, lon, "입니다.")



// 형식 추론
/*
 초기값 선언을 기반으로 자동으로 추론한다.
 선언시 초기값을 제공하고 자료형을 생략하면 형식 추론을 수행한다.
 var a = 1 (자동으로 Int로 선언)
 var b = 12.3 (자동으로 Double로 선언)
*/



// 옵셔널
/*
 "값이 없음" 을 c언어에서 파생된 일반적인 언어는 null 또는 NULL을 사용, Objectve-C는 nil을 사용
 Objective-C 에서 파생 된 Swift는 nil을 사용한다.
 
 optional은 Swift에서 "값이 없음"을 표현하는 새로운 개념
 nil 값을 가질 수 있는 형식을 옵셔널 형식 이라고 한다. 초기값을 지정 하지 않을 경우 nil로 초기화 된다.
 자료형 뒤에 ? 문자를 추가 함 으로써 옵셔널 형식을 선언 할 수 있다.
 */

var optional : Int? // 옵셔널 선언, nil 값을 가지지 못함
var nonOptional : Int // 비 옵셔널 선언, nil 값을 가질 수 있다.

optional = nil
// nonOptional = nil // 에러
//Swift는 옵셔널이라는 새로운 개념을 통해 nil이 될수 있는 형식과 그렇지 않은 형식을 구분한다.



// wrapping, unwrapping
/*
 unwrapping = 옵셔널로 선언된 변수의 값을 추출하는 과정
 옵셔널 표현식 뒤에 !를 붙임 으로써, 옵셔널 형식의 값을 추출 한다.
 */

var optionalStr : String? = "hello" // 옵셔널 선언
print(optionalStr)
// Optional("hello") 가 출력 된다.

print(optionalStr!) // 옵셔널 형식 unwrapping
// hello 가 출력 된다.


// 값이 지정되지 않은(nil)인 옵셔널 값에 unwrapping을 시도하면, 에러가 난다.
// 이를 강제 추출 (forced-unwrapping)이라 한다.
var optionalStr2 : String?
print(optionalStr2)
//print(optionalStr2!) // 에러




/*
 옵셔널 형식에 저장된 값을 추출할 때 값의 유효성을 정확히 판단할 수 있다면 암시적 추출(implicit unwrapping)
 을 사용할 수 있다.
 암시적 추출은 옵셔널 형식 선언 시 ? 대신 !를 사용한다.
 암시적 추출은 값을 읽을 때 ! 연산자 없이 값을 읽을 수 있다.
 */

var optionalStr3 : String! = "hello"
print(optionalStr3)
print(optionalStr3!) // nil이 출력된다.



/*
Swift는 유효한 값을 확인하는 과정과 값을 추출하는 과정을 동시에 처리해주는
옵셔널 바인딩 구문을 제공한다.

if var 변수 이름 = 옵셔널 표현식 {
    바인딩이 성공했을 때 실행할 코드
}
 
*/

var optionalNum : String? = "hello"

if var str = optionalNum {
    
    str += "Swift"
    print(str)
}

// helloSwift 출력

