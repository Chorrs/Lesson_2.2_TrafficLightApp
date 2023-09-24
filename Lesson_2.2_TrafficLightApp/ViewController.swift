//
//  ViewController.swift
//  Lesson_2.2_TrafficLightApp
//
//  Created by Chorrs on 22.09.23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var stackviewOfLights: UIStackView!
    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowlLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    @IBOutlet weak var buttonStart: UIButton!
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonStart.layer.cornerRadius = 15
            
        redLight.layer.cornerRadius = 40
        yellowlLight.layer.cornerRadius = 40
        greenLight.layer.cornerRadius = 40
        
        redLight.alpha = 0.5
        yellowlLight.alpha = 0.5
        greenLight.alpha = 0.5
        
        buttonStart.setTitle("START", for: .normal)
        
        }
    
    
        @IBAction func pressedStartButton() {
            buttonStart.setTitle("NEXT", for: .normal)
            
            if redLight.alpha == 0.5 && yellowlLight.alpha == 0.5 {
                redLight.alpha = 1
                greenLight.alpha = 0.5
            } else if redLight.alpha == 1 {
                redLight.alpha = 0.5
                yellowlLight.alpha = 1
            } else {
                yellowlLight.alpha = 0.5
                greenLight.alpha = 1
            }
            
        }
        
      
    }
    

