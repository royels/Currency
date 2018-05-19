import Foundation
typealias DictionaryOfGeneric<T: Hashable> = Dictionary<T, Bool>

class Currency<T> {
    
    
    static func at(list: [T], indexes: [Int]) -> [T] {
        let intSet = Set<Int>(indexes)
        var returnValue = [T]()
        for i in 0..<list.count {
            if(intSet.contains(i)) {
                returnValue.append(list[i])
            }
        }
        return returnValue
    }
    
    static func at(list: [T], index: Int) -> [T] {
        return at(list: list, indexes: [index])
    }
    
    static func chunk(list: [T], size: Int) -> [[T]] {
        if size <= 0 {
            return [list]
        }
        var counter = 1
        var returned_list = [[T]]()
        var returned_item = [T]()
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
    
    static func contains<T: Hashable>(list: [T], element: T) -> Bool {
        for it in list {
            if (it == element) {
                return true
            }
        }
        return false
    }
    
    static func cycle(list: [T], repeats: Int, callback: (_ result: T) -> T) {
        for _ in 0..<repeats {
            for item in list {
                _ = callback(item)
            }
        }
    }
    
    static func difference<T: Hashable>(list1: [T], list2: [T]) -> [T] {
        var dict = Set<T>()
            for i in list1 {
                dict.insert(i)
            }
            return list2.filter { dict.contains($0) }
    }
    
    static func each(list: [T], callback: (_ result: T) -> T) {
        return cycle(list: list, repeats: 1, callback: callback)
    }
    
    static func every(list: [T], callback: (_ result: T) -> Bool) -> Bool {
        for i in list  {
            if( !callback(i)) {
                return false
            }
        }
        return true
    }
    
    static func factorial(num: T) -> T
    {
        var x = 1
        for i in 1...(num as! Int) {
            x = x * i
        }
        return x as! T
    }
    
    static func fetch<T: Hashable>(list: [T], index: Int, orElse: Int? = nil) -> T
    {
        let lookup: Int
        if(index < list.count) {
            if(index < 0) {
                lookup = list.count + index
                return list[lookup]
            }
            return list[index]
        }
        return orElse as! T
    }
    
    static func fill<T: Hashable>(_ list: inout [T], _ value: T, _ startIndex: Int? = nil, _ endIndex: Int? = nil)
    {
        var begin = 0
        var end = list.count
        if let startInd = startIndex {
            begin = startInd
        }
        if let endInd = endIndex {
            end = endInd
        }
        for i in begin..<end {
            list[i] = value
        }
    }
    
    static func find(_ list: [T],  callback: (_ result: T) -> Bool) -> Bool? {
        for i in list {
            if (callback(i)) {
                return true
            }
        }
        return nil
    }
    
    static func findIndex(_ list: [T],  callback: (_ result: T) -> Bool) -> Int? {
        for i in 0..<list.count {
            if (callback(list[i])) {
                return i
            }
        }
        return nil
    }
    
    static func first(_ list: [T]) -> Any? {
        return list.count > 0 ? list[0] : nil
    }
    
    
    
}

