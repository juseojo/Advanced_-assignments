//
//  Filters.swift
//  Advanced_ assignments
//
//  Created by seongjun cho on 6/2/25.
//

func a(array: [Int]) -> [Int] {
	return array.enumerated()
		.filter { index, _ in
			return index % 2 == 0
		}
		.map { _, element in // 튜플 -> 배열
			return element
		}
}

func b(array: [String]) -> [String] {
	return array.enumerated()
		.filter { index, _ in
			return index % 2 == 0
		}
		.map { _, element in // 튜플 -> 배열
			return element
		}
}

func c<T: Sequence>(array: T) -> [T.Element] {
	return array.enumerated()
		.filter { index, _ in
			return index % 2 == 0
		}
		.map { _, element in // 튜플 -> 배열
			return element
		}
}

func d<T: Sequence>(array: T) -> [T.Element] where T.Element: Numeric {
	return array.enumerated()
		.filter { index, _ in
			return index % 2 == 0
		}
		.map { _, element in // 튜플 -> 배열
			return element
		}
}
