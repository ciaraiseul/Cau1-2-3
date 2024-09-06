//
//  main.swift
//  Cau1
//
//  Created by Phạm Trường Giang on 06/09/2024.
//
//

import Foundation
// Cau 1:
//Để tạo một dictionary từ một mảng keys và một mảng values trong Swift ta có thể sử dụng phương thức zip(_:_:) để kết hợp hai mảng lại thành các cặp giá trị tuples, sau đó chuyển đổi các cặp đó thành dictionary.
// ví dụ:
let keys = ["name", "age", "city"]
let values = ["Giang", "22", "Thai Binh"]

let dictionary = Dictionary(uniqueKeysWithValues: zip(keys, values))

print(dictionary)

//Cau 2
func isSumEven(_ N: Int) -> Bool {
    return (N * (N + 1) / 2) % 2 == 0
}

print("Nhập giá trị của N: ", terminator: "")
if let input = readLine(), let N = Int(input), N > 0, N < 10000 {
    if isSumEven(N) {
        print("Tổng của các số từ 1 đến \(N) là chẵn")
    } else {
        print("Tổng của các số từ 1 đến \(N) là lẻ")
    }
} else {
    print("Vui lòng nhập một số nguyên dương nhỏ hơn 10000.")
}

//Cau 3
let integerArray = [1, 4, 3, 6, 8]
let decimalArray: [Double] = [1.5, 3.7, 2.9]

var sumArray = [Double]()
let maxLength = max(integerArray.count, decimalArray.count)

for i in 0..<maxLength {
    if i < integerArray.count && i < decimalArray.count {
        let sum = Double(integerArray[i]) + decimalArray[i]
        sumArray.append(sum)
    } else if i < integerArray.count {
        sumArray.append(Double(integerArray[i]))
    } else if i < decimalArray.count {
        sumArray.append(decimalArray[i])
    }
}

let sortedArray = sumArray.sorted()

print("Mảng sau khi cộng và sắp xếp: \(sortedArray)")

