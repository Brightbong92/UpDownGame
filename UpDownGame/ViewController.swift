//
//  ViewController.swift
//  UpDownGame
//
//  Created by tirrilee mac mini on 2022/06/02.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sliderValueChanged (_ sender: UISlider) {
        print(sender.value)
    }
    
    @IBAction func touchUpHit(_ sender: UIButton) {
        print(slider.value)
    }
}

