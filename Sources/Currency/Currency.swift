import Foundation
typealias DictionaryOfGeneric<T: Hashable> = Dictionary<T, Bool>

class Currency<T> {
    
    
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
    
    static func compact(list: [Int?]) -> [Int] {
        return list.filter {$0 != nil } as! [Int]
    }
    
    static func contains(list: [Int], element: Int) -> Bool {
        for it in list {
            if (it == element) {
                return true
            }
        }
        return false
    }
    
    static func cycle(list: [Any], repeats: Int, callback: (_ result: Any) -> Any) {
        for i in 0..<repeats {
            for item in list {
                _ = callback(item)
            }
        }
    }
    
    static func difference(list1: [Int], list2: [Int]) -> [Int] {
        var dict = DictionaryOfGeneric<Int>()
        if(list1.count > list2.count)
        {
            for i in list1 {
                dict[i] = true
            }
            return list2.filter { dict[$0] == true }
        }
        else {
            for i in list2 {
                dict[i] = true
            }
            return list1.filter { dict[$0] == true }
        }
    }

    static func difference<T: Hashable>(list1: [T], list2: [T]) -> [T] {
        var dict = Set<T>()
            for i in list1 {
                dict.insert(i)
            }
            return list2.filter { dict.contains($0) }
    }

}

