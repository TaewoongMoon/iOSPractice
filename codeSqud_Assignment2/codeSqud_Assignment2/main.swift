//
//  main.swift
//  codeSqud_Assignment2
//
//  Created by 문태웅 on 2021/11/02.
//

import Foundation

// 연습문제 1 미션 1
struct Rectangle{
    var leftTopX : (x: Float, y: Float)
    var leftTopY : (x: Float, y: Float)
    var rightBottomX: (x: Float, y:Float)
    var rightBottomY: (x: Float, y:Float)
    
    //미션2. 좌표 호출하기
    func printRect() -> Array<(Float, Float)>{
        return [leftTopX, leftTopY, rightBottomX, rightBottomY]
    }
    
    // 미션3. printArea() 메서드 만들기
    func printArea() -> Float{
        let width = rightBottomX.x - leftTopX.x
        let height = leftTopY.y - leftTopX.y
        return width * height
    }
    
    // 미션5. printCenter()메서드 만들기
    mutating func printCenter() -> (Float, Float){
        leftTopX = (4.5, 3.5)
        leftTopY = (4.5, 10.5)
        rightBottomX = (15, 3.5)
        rightBottomY = (15, 10.5)
        let centerX : Float = (rightBottomX.x + leftTopX.x) / 2
        let centerY : Float = (leftTopY.y + leftTopX.y) / 2
        return (centerX, centerY)
    }
}

var rect = Rectangle(leftTopX: (x: 5, y: 4), leftTopY: (x: 5, y: 11), rightBottomX: (x: 15, y: 4), rightBottomY: (x: 15, y: 11))

print(rect.printRect())
print(rect.printArea())
print(rect.printCenter())

// 연습문제2

struct MyPoint{
    var myX : Float
    var myY: Float
    
    func printPoint() -> (Float, Float){
        return (myX, myY)
    }
    mutating func setX(x: Float) -> Float{
        myX = x
        return myX
    }
    
    mutating func setY(y: Float) -> Float{
        myY = y
        return myY
    }
    func getDistanceTo(toPoint: MyPoint) -> Float{
        let x_distance = toPoint.myX - myX
        let y_distance = toPoint.myY - myY
        return sqrt(pow(x_distance, 2) + pow(y_distance, 2))
    }
}

var pointA = MyPoint(myX: 2.5, myY: 15.8)
var pointB = MyPoint(myX: 15.0, myY: 12.2)
print(pointA.printPoint())
print(pointA.printPoint())
print(pointA.getDistanceTo(toPoint: pointB))

// 연습문제 3

struct RectangleToMyPoint{
    var myPointTopLeft : MyPoint
    var myPointRightBottom : MyPoint

    init(){
        myPointTopLeft = MyPoint(myX: 0, myY: 0)
        myPointRightBottom = MyPoint(myX: 0, myY: 0)
    }
    
    
    func printRect(){
        print("LeftTopX:\(myPointTopLeft.myX), \(myPointTopLeft.myY)")
        print("LeftBottomX:\(myPointTopLeft.myX), \(myPointRightBottom.myY)")
        print("RightTopX: \(myPointRightBottom.myX), \(myPointTopLeft.myY)")
        print("RightBottomX: \(myPointRightBottom.myX), \(myPointRightBottom.myY)")
    }
}

let rectangleMyPoint = RectangleToMyPoint()
