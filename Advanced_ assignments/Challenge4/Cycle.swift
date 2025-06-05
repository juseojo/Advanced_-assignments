//
//  Cycle.swift
//  Advanced_ assignments
//
//  Created by seongjun cho on 6/5/25.
//

class A {
	weak var b: B?

	deinit {
		print("A 해제")
	}
}

class B {
	weak var a: A?

	lazy var closure: (() -> Void)? = { [unowned self] in
		print(self.a)
	}

	deinit {
		print("B 해제")
	}
}

func challenge4() {
	let a1 = A()
	let b1 = B()

	a1.b = b1
	b1.a = a1
	b1.closure?()
}
