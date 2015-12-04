//  Sandbox.swift

import Foundation

/*

* Write your function here!

*/

//calss object: Equatable _ = {}


func listWithElements (var elements:[String] , let conjunction:String) -> String {
    
    let countElements = elements.count;
    var returnString = ""
    
    if conjunction == "and" || conjunction == "or" || conjunction == "&" {
        
        switch countElements {
        case 0 :
            returnString = "";
        case 1 :
            returnString = elements[0]
        case 2 :
            //conjunction = " and "
            returnString = "\(elements[0] + " " + conjunction + " " + (elements[1]))"
        case 3 :
            //conjunction = " or "
            
            let lastString = conjunction + " " + elements[2]
            elements = [elements[0], elements[1], lastString]
            returnString = elements.joinWithSeparator(", ") + "."
        default:
            var sumString = ""
            for var i = 0; i < elements.count; i++ {
                if i == elements.count - 1 {
                    sumString += "\(conjunction) \(elements[i])"
                }
                else {
                    sumString += "\(elements[i]), "
                }
            }
            returnString = sumString
        }
        return returnString
    }
    return  "unknown conjunction"
}
    

