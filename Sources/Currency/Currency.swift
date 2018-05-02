import Foundation

class Currency {
    
    
    func at(list: [Any], indexes: [Int]) -> [Any] {
        let intSet = Set<Int>(indexes)
        var returnValue = [Any]()
        for i in 0..<list.count {
            if(intSet.contains(i)) {
                returnValue.append(list[i])
            }
        }
        return returnValue
    }
    
    func at(list: [Any], index: Int) -> [Any] {
        return at(list: list, indexes: [index])
    }
}
