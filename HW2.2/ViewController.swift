//
//  ViewController.swift
//  HW2.2
//
//  Created by Mike Albright on 11.07.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redPercentageLabel: UILabel!
    @IBOutlet weak var greenPercentageLabel: UILabel!
    @IBOutlet weak var bluePercentageLabel: UILabel!
    
    private var redColor: CGFloat = 1.0
    private var greenColor: CGFloat = 1.0
    private var blueColor: CGFloat = 1.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.cornerRadius = 15
    }
    
    @IBAction func redSliderMoved(_ sender: UISlider) {
        redColor = CGFloat(sender.value)
        redPercentageLabel.text = String(format: "%.2f", sender.value)
        setColor()
    }
    @IBAction func greenSliderMoved(_ sender: UISlider) {
        greenColor = CGFloat(sender.value)
        greenPercentageLabel.text = String(format: "%.2f", sender.value)
        setColor()
    }
    @IBAction func blueSliderMoved(_ sender: UISlider) {
        blueColor = CGFloat(sender.value)
        bluePercentageLabel.text = String(format: "%.2f", sender.value)
        setColor()
    }  

    private func setColor() {
        colorView.backgroundColor = UIColor(red: redColor, green: greenColor, blue: blueColor, alpha: 1)
    }
    
}

