//
//  BinarySearche.swift
//  Algoritm
//
//  Created by Марина Машук on 21.09.23.
//

import Foundation

class BinarySearch {
    //Алгоритм бинарного поиска элемента в отсортированном списке
    func bynarySearch(list: [Int], item: Int) -> Int? {
        var low = 0
        var high = list.count - 1
        
        while low <= high {
            let mid = Int(high + low / 2)
            let guess = list[mid]
            if guess == item {
                return mid
            }
            if guess > item {
                high = mid - 1
            }
            else {
                low = mid + 1
            }
        }
        return nil
    }
}
//    let b = BinarySearch()
//    let list = [3, 5, 8, 12, 34, 45, 67, 89, 200, 201, 230, 300, 400, 500, 600]
//    let item = 400
//
//    b.bynarySearch(list: list, item: item)
