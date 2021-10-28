import UIKit
let a = 10
let b = 20
func myFunc (FirstNumber a: Int, SecondNumber b : Int) -> Int {
    return a + b
}

myFunc(FirstNumber: 1, SecondNumber: 2)

func goodMorning(){
    print("Good Morning")
}

goodMorning()

func printTotalWithTax(subTotal : Double) -> Double{
    return subTotal * 1.13
}


print(printTotalWithTax(subTotal: 1.4))


func calculateTotalWithTax(subTotal: Double, tax: Double) -> Double{
    return subTotal * tax
}

print(calculateTotalWithTax(subTotal: 25, tax: 23))
