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
    
    private var redUIColor: CGFloat = 0
    private var greenUIColor: CGFloat = 0
    private var blueUIColor: CGFloat = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.cornerRadius = 10
        setupValueSliders()
        colorView.backgroundColor = UIColor(
            red: redUIColor,
            green: greenUIColor,
            blue: blueUIColor,
            alpha: 1
        )
    }
    
    @IBAction func redSliderAction() {
        redSliderValue.text = (roundf(redSlider.value * 100) / 100).formatted()
        redUIColor = CGFloat(redSlider.value)
        setColorView()
    }
    @IBAction func greenSliderAction() {
        greenSliderValue.text = (roundf(greenSlider.value * 100) / 100).formatted()
        greenUIColor = CGFloat(greenSlider.value)
        setColorView()
    }
    @IBAction func blueSliderAction() {
        blueSliderValue.text = (roundf(blueSlider.value * 100) / 100).formatted()
        blueUIColor = CGFloat(blueSlider.value)
        setColorView()
    }
    
    private func setColorView() {
        colorView.backgroundColor = UIColor(
            red: redUIColor,
            green: greenUIColor,
            blue: blueUIColor,
            alpha: 1
        )
    }
    private func setupValueSliders() {
        redSliderValue.text = redSlider.value.formatted()
        greenSliderValue.text = greenSlider.value.formatted()
        blueSliderValue.text = blueSlider.value.formatted()
    }
}

