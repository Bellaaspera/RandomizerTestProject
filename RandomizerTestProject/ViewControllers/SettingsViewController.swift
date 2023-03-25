//
//  SettingsViewController.swift
//  RandomizerTestProject
//
//  Created by Светлана Сенаторова on 18.03.2023.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet var minValueTF: UITextField!
    @IBOutlet var maxValueTF: UITextField!
    
    var randomNumber: RandomNumber!
    var delegate: SettingsViewControllerDelegate!

    override func viewDidLoad() {
        super.viewDidLoad()
        maxValueTF.text = randomNumber.maximumValue.formatted()
        minValueTF.text = randomNumber.minimumValue.formatted()
        maxValueTF.delegate = self
        minValueTF.delegate = self
        
    }

    @IBAction func cancelAction() {
        dismiss(animated: true)
    }
    
    @IBAction func saveAction(_ sender: UIBarButtonItem) {
        view.endEditing(true)
        delegate.setNewValues(for: randomNumber)
        dismiss(animated: true)
    }
}

// MARK: - UITextFieldDelegate

extension SettingsViewController: UITextFieldDelegate {
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        guard let text = textField.text, !text.isEmpty else { return }
        guard let numberValue = Int(text) else { return }
        
        switch textField {
        case minValueTF:
            randomNumber.minimumValue = numberValue
        default:
            randomNumber.maximumValue = numberValue
        }
    }
}
