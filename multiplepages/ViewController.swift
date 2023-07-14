//
//  ViewController.swift
//  multiplepages
//
//  Created by 林秀謙 on 2023/7/14.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func sliderMove(_ sender: UISlider) {
        let v = Int(sender.value)
        label.text = String(format: "%d", v)
    }
    
    
    @IBAction func btnPress(_ sender: UIButton) {
            performSegue(withIdentifier: "showPage2", sender: self)
    }
    
    @IBAction func btn3Press(_ sender: Any) {
        performSegue(withIdentifier: "showPage3", sender: self)
    }
    
    @IBAction func unwindPage2Back(unwindSegue: UIStoryboardSegue) {
        print("unwindPage2Back")
    }

    @IBAction func unwindPage3Back(unwindSegue: UIStoryboardSegue) {
        let p3  = unwindSegue.source as! Page3ViewController
        label.text = p3.textFieldInput.text
        print("unwindPage3Back")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

