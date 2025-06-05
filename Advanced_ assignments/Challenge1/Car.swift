//
//  Car.swift
//  Advanced_ assignments
//
//  Created by seongjun cho on 6/4/25.
//

private class Engine {

}

private class ElectricEngine: Engine {

}

private class HydrogenEngine: Engine {

}

private class Car<E: Engine> {
	var brand: String
	var model: String
	var year: String
	var engine: E

	init(brand: String, model: String, year: String, engine: E) {
		self.brand = brand
		self.model = model
		self.year = year
		self.engine = engine
	}

	func drive() {
		print("Car 주행 중...")
	}
}

private class ElectricCar: Car<ElectricEngine> {

}

private class HybridCar: Car<Engine> {
	func switchEngine<E: Engine>(to engine: E) {
		self.engine = engine
	}
}

func chellenge1() {
	let h = HybridCar(brand: "hyundai", model: "nexo", year: "2025", engine: HydrogenEngine())
	h.switchEngine(to: ElectricEngine())
	h.switchEngine(to: Engine())
	print(h.engine)
	print(h.drive())
}

// 상속을 사용하여 기능을 추가하는 것과, 프로토콜 채택을 통해서 기능을 추가하는 것의 차이는
// 상속은 부모 클래스의 기능을 물려 받는다.
// 프로토콜은 확장으로 구현 할 수는 있지만, 기본적으로 채택한 곳에서 정의된 기능을 구현하여 사용한다.
// 상속은 상하의 수직적인 느낌이라면, 프로토콜을 그룹끼리 모으는 느낌이 강하다.
// 그리고 swift에서는 단일 상속만을 원칙으로 하기에 한 객체에 여러 부모를 둘 수 없지만,
// 프로토콜은 여러 프로토콜을 채택 가능하다는 차이가 있다.
