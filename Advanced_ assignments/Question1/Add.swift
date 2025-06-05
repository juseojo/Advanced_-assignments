//
//  ADD.swift
//  Advanced_ assignments
//
//  Created by seongjun cho on 6/2/25.
//

let sum: (Int, Int) -> String = { (num1: Int, num2: Int) -> String in
	return "두 수의 합은 \(num1 + num2)입니다."
}

func calculate(closure: (Int, Int) -> String, num1: Int, num2: Int) {
	print(closure(num1, num2))
}

