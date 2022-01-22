//
//  ColorPickerViewController.swift
//  Mensagens
//
//  Created by Rennan Bruno on 21/01/22.
//  Copyright © 2022 Eric Brito. All rights reserved.
//

import UIKit

class ColorPickerViewController: UIViewController {
    
    @IBOutlet weak var viColor: UIView!
    
    @IBOutlet weak var slRed: UISlider!
    @IBOutlet weak var slGreen: UISlider!
    @IBOutlet weak var slBlue: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func chooseColor(_ sender: UIButton) {
            
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func changeColor(_ sender: UISlider) {
        
    viColor.backgroundColor = UIColor(red: CGFloat(slRed.value), green:CGFloat(slGreen.value), blue: CGFloat(slBlue.value), alpha: 1.0)
    }
    
    
}