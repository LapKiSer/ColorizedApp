//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Кирилл Лапковский on 24.03.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redSliderValue: UILabel!
    @IBOutlet var greenSliderValue: UILabel!
    @IBOutlet var blueSliderValue: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.cornerRadius = 10
        setupValueSliders()
        
        
    }

    @IBAction func redSliderAction() {
        redSliderValue.text = (roundf(redSlider.value * 100) / 100).formatted()
    }
    @IBAction func greenSliderAction() {
        greenSliderValue.text = (roundf(greenSlider.value * 100) / 100).formatted()
    }
    @IBAction func blueSliderAction() {
        blueSliderValue.text = (roundf(blueSlider.value * 100) / 100).formatted()
    }
    
    
    private func setupValueSliders() {
        redSliderValue.text = redSlider.value.formatted()
        greenSliderValue.text = greenSlider.value.formatted()
        blueSliderValue.text = blueSlider.value.formatted()
    }
}

