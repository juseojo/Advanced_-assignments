//
//  Introduce.swift
//  Advanced_ assignments
//
//  Created by seongjun cho on 6/2/25.
//

protocol Introducible {
	var name: String { get set }

	func introduce() -> String
	func uniqueMethod() -> Void
}

struct Robot: Introducible {
	var name: String {
		didSet {
			print("변경 이전 값: \(oldValue)")
			print("변경 이후 값: \(self.name)")
		}
	}

	func uniqueMethod() {
		batteryCharge()
	}

	func introduce() -> String {
		print("안녕하세요, 저는 \(name)입니다.")

		return "안녕하세요, 저는 \(name)입니다."
	}

	func batteryCharge() {
		print("배터리 충전중...")
	}

}

struct Cat: Introducible {
	var name: String
	
	func introduce() -> String {
		print("안녕하세요, 저는 \(name)입니다.")

		return "안녕하세요, 저는 \(name)입니다."
	}

	func uniqueMethod() {
		grooming()
	}

	func grooming() {
		print("손을 핥습니다...")
	}
}

struct Dog: Introducible {
	var name: String
	
	func introduce() -> String {
		print("안녕하세요, 저는 \(name)입니다.")
		
		return "안녕하세요, 저는 \(name)입니다."
	}

	func uniqueMethod() {
		barking()
	}

	func barking() {
		print("멍!멍!")
	}
}


func question4() {
	let robot = Robot(name: "robot")
	let cat = Cat(name: "cat")
	let dog = Dog(name: "dog")
	var introducibles = [Introducible]()

	introducibles.append(robot)
	introducibles.append(cat)
	introducibles.append(dog)

	for introducible in introducibles {
		introducible.uniqueMethod()
	}
}
