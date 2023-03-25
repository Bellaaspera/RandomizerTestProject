//
//  MainViewController.swift
//  RandomizerTestProject
//
//  Created by Светлана Сенаторова on 17.03.2023.
//

import UIKit

protocol SettingsViewControllerDelegate {
    
    func setNewValues(for randomNumber: RandomNumber)
    
}

class MainViewController: UIViewController {

    @IBOutlet var minValueLabel: UILabel!
    @IBOutlet var maxValueLabel: UILabel!
    @IBOutlet var resultLabel: UILabel!
    
    @IBOutlet var resultButton: UIButton!
    
    var randomNumber = RandomNumber(minimumValue: 0, maximumValue: 100)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultButton.layer.cornerRadius = 10
        minValueLabel.text = randomNumber.minimumValue.formatted()
        maxValueLabel.text = randomNumber.maximumValue.formatted()
        resultLabel.text = randomNumber.getNumber().formatted()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let navigationVC = segue.destination as? UINavigationController else { return }
        guard let settingsVC = navigationVC.topViewController as? SettingsViewController else { return }
        settingsVC.randomNumber = randomNumber
        settingsVC.delegate = self
    }

    @IBAction func resultButtonPressed() {
        resultLabel.text = randomNumber.getNumber().formatted()
    }
    
    
}

// MARK: - SettingsViewControllerDelegate

extension MainViewController: SettingsViewControllerDelegate {
    func setNewValues(for randomNumber: RandomNumber) {
        self.randomNumber = randomNumber
        minValueLabel.text = randomNumber.minimumValue.formatted()
        maxValueLabel.text = randomNumber.maximumValue.formatted()
    }
    
}
