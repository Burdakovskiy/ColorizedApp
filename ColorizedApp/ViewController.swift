//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Дмитрий on 22.11.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redSlider.value = 110
        greenSlider.value = 150
        blueSlider.value = 180
        
        redLabel.text = string(from: redSlider)
        greenLabel.text = string(from: greenSlider)
        blueLabel.text = string(from: blueSlider)
        
        setColor()
    }

    @IBAction func sliderMoved(_ sender: UISlider) {
        setColor()
        
        switch sender.tag {
        case 0:
            redLabel.text = string(from: redSlider)
        case 1:
            greenLabel.text = string(from: greenSlider)
        case 2:
            blueLabel.text = string(from: blueSlider)
        default:
            break
        }
        
    }
    func setColor() {
        view.backgroundColor = UIColor(red: CGFloat(redSlider.value) / 255,
                                       green: CGFloat(greenSlider.value) / 255,
                                       blue: CGFloat(blueSlider.value) / 255,
                                       alpha: 1)
    }
    func string(from slider: UISlider) -> String{
        String(Int(slider.value))
    }
}

