//
//  ViewController.swift
//  codepath_prework_ios
//
//  Created by Irenee Niyibaho on 8/13/25.
//

import UIKit

class ViewController: UIViewController {
    
    // Existing Outlets
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolNameTextField: UITextField!
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    @IBOutlet weak var numberPetsLabel: UILabel!
    @IBOutlet weak var morePetsStepper: UIStepper!
    @IBOutlet weak var morePetsSwitch: UISwitch!
    @IBOutlet weak var schoolLogoImageView: UIImageView!
    @IBOutlet weak var introduceButton: UIButton!
    @IBOutlet weak var hobbyTextField: UITextField!
    @IBOutlet weak var favoriteColorTextField: UITextField!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var ageStepper: UIStepper!
    @IBOutlet weak var bioTextView: UITextView!
    @IBOutlet weak var favoriteColorWell: UIColorWell!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Defaults
        numberPetsLabel.text = "0"
        morePetsStepper.value = 0
        ageLabel.text = "18"
        ageStepper.value = 18
        
        // Background color
        view.backgroundColor = UIColor.systemTeal
        
        // Label styling
        numberPetsLabel.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        numberPetsLabel.textColor = .white
        ageLabel.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        ageLabel.textColor = .white
        
        // Segmented control colors
        yearSegmentedControl.backgroundColor = .white
        yearSegmentedControl.selectedSegmentTintColor = .systemPink
        
        // Button styling
        introduceButton.backgroundColor = .systemPink
        introduceButton.setTitleColor(.white, for: .normal)
        introduceButton.layer.cornerRadius = 10
        
        // Bio styling
        bioTextView.layer.cornerRadius = 8
        bioTextView.layer.borderWidth = 1
        bioTextView.layer.borderColor = UIColor.white.cgColor
        bioTextView.textColor = .white
        bioTextView.backgroundColor = UIColor.black.withAlphaComponent(0.2)
        
        // Color Well setup
        favoriteColorWell.supportsAlpha = true
        favoriteColorWell.selectedColor = .systemTeal
        favoriteColorWell.addTarget(self, action: #selector(colorWellChanged(_:)), for: .valueChanged)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        applySafeLayerStyling()
    }
    
    func applySafeLayerStyling() {
        let textFields = [
            firstNameTextField,
            lastNameTextField,
            schoolNameTextField,
            hobbyTextField,
            favoriteColorTextField
        ]
        for field in textFields {
            guard let field = field else { continue }
            field.layer.cornerRadius = 8
            field.layer.borderColor = UIColor.white.cgColor
            field.layer.borderWidth = 1.0
            field.textColor = .white
            field.backgroundColor = UIColor.black.withAlphaComponent(0.2)
        }
        
        yearSegmentedControl.layer.cornerRadius = 8
        yearSegmentedControl.clipsToBounds = true
        
        schoolLogoImageView.layer.cornerRadius = schoolLogoImageView.frame.height / 2
        schoolLogoImageView.clipsToBounds = true
    }
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        let pets = Int(sender.value)
        numberPetsLabel.text = "\(pets)"
    }
    
    @IBAction func ageStepperChanged(_ sender: UIStepper) {
        let age = Int(sender.value)
        ageLabel.text = "\(age)"
    }
    
    @IBAction func introduceSelfDidTapped(_ sender: UIButton) {
        let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
        
        let introduction = """
        My name is \(firstNameTextField.text!) \(lastNameTextField.text!), and I attend \(schoolNameTextField.text!).
        I am currently in my \(year!) year and I own \(numberPetsLabel.text!) pets.
        It is \(morePetsSwitch.isOn) that I want more pets.
        
        I am \(ageLabel.text!) years old. My hobby is \(hobbyTextField.text!) and my favorite color is \(favoriteColorTextField.text!).
        About me: \(bioTextView.text ?? "")
        """
        
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        alertController.addAction(action)
        present(alertController, animated: true, completion: nil)
    }
    
    // NEW: Color Well Action
    @objc func colorWellChanged(_ sender: UIColorWell) {
        if let pickedColor = sender.selectedColor {
            view.backgroundColor = pickedColor
        }
    }
}

