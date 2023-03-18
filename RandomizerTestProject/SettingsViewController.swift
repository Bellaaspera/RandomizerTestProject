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
    
    @IBOutlet var saveButton: UIButton!
    @IBOutlet var cancelButton: UIButton!
    
    var minValue: String!
    var maxValue: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        maxValueTF.text = maxValue
        minValueTF.text = minValue
        saveButton.layer.cornerRadius = 10
        cancelButton.layer.cornerRadius = 10
        
    }

    @IBAction func cancelAction() {
        dismiss(animated: true)
    }
    
}
