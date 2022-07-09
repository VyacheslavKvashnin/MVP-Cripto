//
//  Cripto.swift
//  MVP-Cripto
//
//  Created by Вячеслав Квашнин on 09.07.2022.
//

import Foundation

struct Crypto {
    let name: String
    let tickets: String
    let value: Int
}

extension Crypto {
    static var testData = [
        Crypto(name: "Bitcoin", tickets: "BTC", value: 55000),
        Crypto(name: "Etherium", tickets: "ETH", value: 3000),
        Crypto(name: "Ripple", tickets: "XRP", value: 389),
        Crypto(name: "Stellar", tickets: "STR", value: 987),
        Crypto(name: "Algorand", tickets: "ALG", value: 665)
    ]
}
