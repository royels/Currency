import Foundation

class Currency {
    
    
    static func at(list: [Any], indexes: [Int]) -> [Any] {
        let intSet = Set<Int>(indexes)
        var returnValue = [Any]()
        for i in 0..<list.count {
            if(intSet.contains(i)) {
                returnValue.append(list[i])
            }
        }
        return returnValue
    }
    
    static func at(list: [Any], index: Int) -> [Any] {
        return at(list: list, indexes: [index])
    }
    
    static func chunk(list: [Any], size: Int) -> [[Any]] {
        if size <= 0 {
            return [list]
        }
        var counter = 1
        var returned_list = [[Any]]()
        var returned_item = [Any]()
        for item in list {
            returned_item.append(item)
            if counter % size == 0 {
                print(returned_item)
                returned_list.append(returned_item)
                returned_item.removeAll()
            }
            counter += 1
        }
        if returned_item.count > 0 {
            returned_list.append(returned_item)
        }
        return returned_list
    }
    
}
