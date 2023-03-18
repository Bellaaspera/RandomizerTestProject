//
//  MainViewController.swift
//  RandomizerTestProject
//
//  Created by Светлана Сенаторова on 17.03.2023.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet var minValueLabel: UILabel!
    @IBOutlet var maxValueLabel: UILabel!
    @IBOutlet var resultLabel: UILabel!
    
    @IBOutlet var resultButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultButton.layer.cornerRadius = 10
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else { return }
        settingsVC.minValue = minValueLabel.text
        settingsVC.maxValue = maxValueLabel.text
    }

    @IBAction func resultButtonPressed() {
        let minValue = Int(minValueLabel.text ?? "") ?? 0
        let maxValue = Int(maxValueLabel.text ?? "") ?? 100
        resultLabel.text = Int.random(in: minValue...maxValue).formatted()
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard let settinggsVC = segue.source as? SettingsViewController else { return }
        minValueLabel.text = settinggsVC.minValueTF.text
        maxValueLabel.text = settinggsVC.maxValueTF.text
    }
    
}

