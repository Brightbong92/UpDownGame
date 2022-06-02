//
//  ViewController.swift
//  UpDownGame
//
//  Created by tirrilee mac mini on 2022/06/02.
//

import UIKit

class ViewController: UIViewController {

    
    var randomValue : Int = 0
    var tryCount: Int = 0
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var tryCountLabel : UILabel!
    @IBOutlet weak var sliderValueLabel : UILabel!
    @IBOutlet weak var minimumValueLabel : UILabel!
    @IBOutlet weak var maximumValueLabel : UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        slider.setThumbImage(UIImage(imageLiteralResourceName: "slider_thumb"), for: .normal)
        reset()
    }

    @IBAction func sliderValueChanged (_ sender: UISlider) {
        print(sender.value)
        sliderValueLabel.text = String(Int(sender.value))
    }
    
    @IBAction func touchUpHit(_ sender: UIButton) {
        print(slider.value)
        let hitValue : Int = Int(slider.value)
        slider.value = Float(hitValue)
    }
    
    @IBAction func toughUpResetButton(_ sender: UIButton) {
        print("touch up reset button")
        reset()
    }
    
    func reset() {
        print("reset")
        randomValue = Int.random(in: 0...30)
        tryCount = 0
        tryCountLabel.text = "0 / 5"
        slider.minimumValue = 0
        slider.maximumValue = 30
        slider.value = 15
        minimumValueLabel.text = "0"
        maximumValueLabel.text = "30"
        sliderValueLabel.text = "15"
    }
}

