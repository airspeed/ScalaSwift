//: Playground - noun: a place where people can play

import Foundation

extension Array where Element: Comparable, Element: Equatable {
    var head: Element? {
        return first
    }
    var tail: [Element] {
        if count == 0 {
            return self
        } else {
            return Array(self[1..<count])
        }
    }
    func concat(list: [Element]) -> [Element] {
        return self + list
    }
    func drop(at: Int) -> [Element] {
        if count == 0 {
            return self
        } else {
            if at == 0 {
                return tail.drop(at: at - 1)
            } else {
                return [head!] + (tail.drop(at: at - 1))
            }
        }
    }
    var quickSorted: [Element] {
        if count < 2 {
            return self
        } else {
            return [self.min()!] + drop(at: index(of: self.min()!)!).quickSorted
        }
    }
}


let a = [1,2,3,10,5,8]
a[0..<a.count]
a.head
a.sorted()
a.max()
a.quickSorted
a.drop(at: 2)
a.drop(at: 3)
