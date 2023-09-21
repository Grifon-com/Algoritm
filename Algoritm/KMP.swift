//
//  ViewController.swift
//  Algoritm
//
//  Created by Марина Машук on 21.09.23.
//

import UIKit

class KMP {
    // Алгоритм Кнута-Морриса-Пратта (КМП-алгоритм)
    func searchFragmentInStock(fragment: String, strock: String) {
        let arrayString = Array(fragment)
        
        let countSymbol = fragment.count
        var array:[Int] = [Int]()
        
        var count1 = 0
        var count2 = 1
        
        for _ in 0..<countSymbol {
            array.append(0)
        }
        
        while count2 < countSymbol {
            if arrayString[count1] == arrayString[count2] {
                array[count2] = count1 + 1
                count1 += 1
                count2 += 1
            }
            else {
                if count1 == 0 {
                    array[count2] = 0
                    count2 += 1
                }
                else {
                    count1 = array[count1 - 1]
                }
            }
        }
        
        let arrayStr = Array(strock)
        let countSymbolStr = arrayStr.count
        
        var count3 = 0
        var count4 = 0
        
        while count3 < countSymbolStr {
            if arrayStr[count3] == arrayString[count4] {
                count3 += 1
                count4 += 1
                if count4 == countSymbol {
                    print("образ найден")
                    break
                }
            } else {
                if count4 > 0 {
                    count4 = array[count4 - 1]
                } else {
                    count3 += 1
                }
            }
        }
        
        if count3 == countSymbolStr {
            print("образ не найден")
        }
    }
}
//    searchFragmentInStock(fragment: "лилилась", strock: "лилилось лилилось")



