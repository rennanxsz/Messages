//
//  MessageColorViewController.swift
//  Mensagens
//
//  Copyright © 2017 Eric Brito. All rights reserved.
//

import UIKit

class MessageColorViewController: BaseViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbMessage.text = message.text
        lbMessage.textColor = message.textColor
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! ScreenColorViewController
        vc .message = message
        
    }
    
    
    override func changeColor(_ sender: UIButton) {
        
        let colorPicker = storyboard?.instantiateViewController(withIdentifier: "ColorPickerViewController") as! ColorPickerViewController
        colorPicker.modalPresentationStyle = .overCurrentContext
        colorPicker.reference = self
        present(colorPicker, animated: true, completion: nil)
        
    }
    
}

extension MessageColorViewController: ColorPickerProtocol{
    
    func applyColor(color: UIColor){
        lbMessage.textColor = color
        message.textColor = color
    }
}
