//
//  QuickSort.swift
//  Algoritm
//
//  Created by Марина Машук on 22.09.23.
//

import Foundation

//быстрая сортировка (рекурсия с опорным элементом)
func quickSort(arr: [Int]) -> [Int] {
    var filter: (Int, Int) -> Bool = { $0 < $1 }
    var left: [Int] = [Int]()
    var right: [Int] = [Int]()
    var center: [Int] = [Int]()
    
    if arr.count <= 1 {
        return arr
    }
    
    let element = arr[0]
    for value in Array(0..<arr.count) {
        if filter(arr[value], element) {
            left.append(arr[value])
        } else if arr[value] == element
        { center.append(arr[value]) }
        else
        { right.append(arr[value]) }
    }
    return quickSort(arr: left) + center + quickSort(arr: right)
}
let arr = [23, 44, 11, 45, 89, 345, 3, 2, 8, 4, 4, 34, 90, 45, 12]

let ar = quickSort(arr: arr)
