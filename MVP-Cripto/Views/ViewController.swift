//
//  ViewController.swift
//  MVP-Cripto
//
//  Created by Вячеслав Квашнин on 09.07.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ticketLabel: UILabel!
    @IBOutlet weak var valueLabel: UILabel!
    
    private var count = 0
    private var testData = [Crypto]()
    private let presenter = Presenter()
    
    weak private var viewOutputDelegate: ViewOutputDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter.setViewInputDelegate(viewInputDelegate: self)
        self.viewOutputDelegate = presenter
        self.viewOutputDelegate?.getData()
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        
    }
}

extension ViewController: ViewInputDelegate {
    func setupInitialState() {
        displayData(i: count)
    }
    
    func setupData(with testData: [Crypto]) {
        self.testData = testData
    }
    
    func displayData(i: Int) {
        if testData.count >= 0 && count <= (testData.count - 1) && count >= 0 {
            nameLabel.text = testData[i].name
            ticketLabel.text = testData[i].tickets
            valueLabel.text = String(testData[i].value)
        } else {
            print("Sorryan!")
        }
    }
}
