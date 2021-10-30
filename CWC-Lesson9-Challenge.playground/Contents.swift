import UIKit

struct TaxCalculator {
    var tax : Double = 0.1
    
    func totalWithTax (amount : Double) -> Double {
        return (amount + 1) * tax
    }
}

struct BillSplitter {
    func splitBy(subTotal: Double, numPeople : Int) -> Double {
        let taxCalc = TaxCalculator()
        let totalWithTax = taxCalc.totalWithTax(amount: subTotal)
        return totalWithTax / Double(numPeople)
    }
}

let splitterAmount : BillSplitter = BillSplitter()

print(splitterAmount.splitBy(subTotal: 120, numPeople: 2))
