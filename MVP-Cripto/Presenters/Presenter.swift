//
//  Presenter.swift
//  MVP-Cripto
//
//  Created by Вячеслав Квашнин on 09.07.2022.
//

import Foundation

class Presenter {
    
    weak private var viewInputDelegate: ViewInputDelegate?
    var testData = Crypto.testData
    
    func setViewInputDelegate(viewInputDelegate: ViewInputDelegate) {
        self.viewInputDelegate = viewInputDelegate
    }
}
