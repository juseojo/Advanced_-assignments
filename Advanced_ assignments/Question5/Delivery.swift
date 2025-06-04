//
//  Delivery.swift
//  Advanced_ assignments
//
//  Created by seongjun cho on 6/4/25.
//

enum DeliveryStatus: Comparable {
	case notStarted
	case inTransit(daysRemaining: Int)
	case error
}

enum DeliveryError: Error {
	case invalidAddress
	case notStarted
	case systemError(reason: String)
}

func predictDeliveryDay(for address: String, status: DeliveryStatus) throws -> String {
	var result = ""

	if address == "" {
		throw DeliveryError.invalidAddress
	} else if status == DeliveryStatus.notStarted {
		throw DeliveryError.notStarted
	} else if status == DeliveryStatus.error {
		throw DeliveryError.systemError(reason: "시스템 오류입니다.")
	} else if case let DeliveryStatus.inTransit(daysRemaining) = status {
		result = "배송까지 \(daysRemaining)일 남았습니다."
	}

	return result
}

func question5() {
	do {
		try print(predictDeliveryDay(for: "house", status: .inTransit(daysRemaining: 5)))
		try print(predictDeliveryDay(for: "", status: .inTransit(daysRemaining: 5)))
	} catch {
		print("error: \(error)")
	}
}
