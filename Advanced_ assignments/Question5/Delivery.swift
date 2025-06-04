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
	}

	switch status {
	case .notStarted:
		throw DeliveryError.notStarted
	case .inTransit(let daysRemaining):
		result = "배송까지 \(daysRemaining)일 남았습니다."
	case .error:
		throw DeliveryError.systemError(reason: "시스템 오류입니다.")
	}

	return result
}

func question5() {
	do {
		try print(predictDeliveryDay(for: "house", status: .inTransit(daysRemaining: 5)))
		try print(predictDeliveryDay(for: "", status: .inTransit(daysRemaining: 5)))
	} catch DeliveryError.invalidAddress {
		print("주소가 잘못되었습니다.")
	} catch DeliveryError.notStarted {
		print("배송이 아직 시작되지 않았습니다.")
	} catch DeliveryError.systemError(reason: let error) {
		print(error)
	} catch {
		print("오류: \(error)")
	}
}
