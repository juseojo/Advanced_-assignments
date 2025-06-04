//
//  MyMap.swift
//  Advanced_ assignments
//
//  Created by seongjun cho on 6/2/25.
//


let numbers = [1, 2, 3, 4, 5]
var result = [String]()

func question2() {
	// 2-1
	result = numbers.map { String($0) }

	// 2-2
	let source = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

	print(source
			.filter { $0 % 2 == 0 }
			.map { String($0) })
}

// 2-3
func myMap(_ array: [Int], trailingClosure: (Int) -> String) -> [String] {
	var result = [String]()

	for num in array {
		result.append(trailingClosure(num))
	}

	return result
}
