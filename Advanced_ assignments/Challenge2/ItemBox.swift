//
//  ItemBox.swift
//  Advanced_ assignments
//
//  Created by seongjun cho on 6/5/25.
//

struct SortableBox<T>: ItemBox {
	var items: [T]
}

protocol ItemBox {
	associatedtype T
	var items: [T] { get set }
}

extension ItemBox where Self.T: Comparable {
	mutating func sortItems() {
		items.sort()
	}
}
