//
//  Filters.swift
//  Advanced_ assignments
//
//  Created by seongjun cho on 6/2/25.
//

func a(array: [Int]) -> [Int] {
	var count = 1
	return array.filter {_ in
		count += 1
		return count % 2 == 0
	}
}

func b(array: [String]) -> [String] {
	var count = 1
	return array.filter {_ in
		count += 1
		return count % 2 == 0
	}
}

func c<T: Sequence>(array: T) -> [T.Element] {
	var count = 1

	return array.filter {_ in
		count += 1
		return count % 2 == 0
	}
}

func d<T: Sequence>(array: T) -> [T.Element] where T.Element: Numeric {
	var count = 1

	return array.filter {_ in
		count += 1
		return count % 2 == 0
	}
}
