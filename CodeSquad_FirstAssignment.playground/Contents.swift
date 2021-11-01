import UIKit

// 연습문제 1번
func converToCM(fromInches: Float) -> Float{
    return fromInches * 2.54
}
print(converToCM(fromInches: 50))

// 연습문제 2번

func convertFromCMToInches(fromCM: Float) -> Float{
    return fromCM / 2.54
}
//print(convertToInches(fromCM: 125))

// 연습문제 3번
func convertToInches(fromMeter: Float) -> Float{
    return fromMeter * 100 / 2.54
}
print(convertToInches(fromMeter: 2.0))

// 추가문제 함수 여러가지 정리

// 개선해야할점: Closure를 사용하여(?) return 값을 함수로 지정한다 by TA. Closure 공부
// 개선해야할점2: 네이밍을 잘 못한다. 고민해서 해보기

// cm 에서 meter 변환함수
func convertToMeters(cm : Float) -> Float{
    let meter = cm / 100
    return meter
}

// inch에서 cm 변환함수
func convertToCmForMeters(fromInches: Float)-> Float {
    let cm = fromInches * 2.54
    return convertToMeters(cm: cm)
}
// inch to Meter 시작함수
func convertFromInchToMeters(fromInches: Float) -> Float{
    return convertToCmForMeters(fromInches: fromInches)
}

// cm 에서 inch 변환함수
func convertToInch(cm : Float) -> Float{
    let inch = cm / 2.54
    return inch
}

// meter에서 cm 변환함수
func convertToCMForInch(fromMeters: Float) -> Float{
    let cm = fromMeters * 100
    return convertToInch(cm: cm)
}

// Meter to Inch 시작함수
func convertFromMeterToInch(fromMeter : Float) -> Float{
    return convertToCMForInch(fromMeters: fromMeter)
}

func allCoversionTypes(data: String){
    var number : String = ""
    var text : String = ""
    
    if(data.contains(" ")){
        number = data.components(separatedBy: " ")[0]
        text = data.components(separatedBy: " ")[1]
    }else{
        number = data
    }
    if(number.contains("cm")){
        let cmMinusOne = number.firstIndex(of: "c")!
        let cmIndex = number.index(before: cmMinusOne)
        let cm = Float(number[...cmIndex])!
        if(text == "inch"){
            print(convertFromCMToInches(fromCM:cm))
        }else{
            print(cm * 100)
        }
    }
    if(number.contains("inch")){
        let inchMinusOne = number.firstIndex(of: "i")!
        let inchIndex = number.index(before: inchMinusOne)
        let inch = Float(number[...inchIndex])!
        if(text == "m"){
            print(convertFromInchToMeters(fromInches: inch))
        }else{
            print(inch * 2.54)
        }
    }
    if(number.contains("m")){
        let meterMinusOne = number.firstIndex(of:"m")!
        let meterIndex = number.index(before: meterMinusOne)
        let meter = Float(number[...meterIndex])!
        if(text == "inch"){
            print(convertFromMeterToInch(fromMeter: meter))
        }else{
            print(meter * 100)
        }
    }
}

let cm_inch = "18.24m"
allCoversionTypes(data: cm_inch)
