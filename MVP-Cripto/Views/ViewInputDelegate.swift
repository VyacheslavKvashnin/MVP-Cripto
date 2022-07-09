//
//  ViewInputDelegate.swift
//  MVP-Cripto
//
//  Created by Вячеслав Квашнин on 09.07.2022.
//

import Foundation

protocol ViewInputDelegate: AnyObject {
    func setupInitialState()
    func setupData(with testData: [Crypto])
    func displayData(i: Int)
}
