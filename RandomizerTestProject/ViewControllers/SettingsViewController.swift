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
        
    }

    @IBAction func cancelAction() {
        dismiss(animated: true)
    }
    
    @IBAction func saveAction(_ sender: UIBarButtonItem) {
        delegate.setNewValues(for: minValueTF.text ?? "0", and: maxValueTF.text ?? "0")
        dismiss(animated: true)
    }
}


