//
//  protocols.swift
//  Advanced_ assignments
//
//  Created by seongjun cho on 6/5/25.
//

extension Introducible {
	func introduce() -> String {
		print("안녕하세요, 저는 \(name)입니다.")

		return "안녕하세요, 저는 \(name)입니다."
	}
}

func challenge3() {
	let robot = Robot(name: "robot")
	let cat = Cat(name: "cat")
	let dog = Dog(name: "dog")
	var introducibles = [Introducible]()

	introducibles.append(robot)
	introducibles.append(cat)
	introducibles.append(dog)

	for introducible in introducibles {
		introducible.introduce()
	}
}
