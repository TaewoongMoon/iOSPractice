import UIKit

struct Car {
    var year : String = "2022"
    var make : String = "산업기능요원"
    var model : String = "Success"
    var details : String {
        return year + make + model
    }
    func getDetails() -> String{
        return details
    }
}
