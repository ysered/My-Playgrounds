//: [Previous](@previous)

import Foundation

func sendToServer(name: String?, address: String?, phone: String?) {
    guard let _ = name else {
        print("name was not set")
        return
    }
    guard let _ = address else {
        print("address was not set")
        return
    }
    guard let phone = phone,
        phone.count >= 10,
        phone.count <= 12,
        phone.allSatisfy({ $0.isNumber }) else {
        print("Phone was not set or invalid!")
        return
    }
    // todo send data
    print("data send")
}

sendToServer(name: "Vasya", address: "Kyiv", phone: "0943298732222")
//: [Next](@next)
