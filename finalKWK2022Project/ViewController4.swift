//
//  ViewController4.swift
//  finalKWK2022Project
//
//  Created by Scholar on 8/4/22.
//

import UIKit

class ViewController4: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func Submit(_ sender: Any) {
        if let guess = textField.text{
            if guess == "City Landscape" {
                textLabel.text = "Slay!!! That's correct."
            } else {
                textLabel.text = "Sorry, there's no slay today."
            }
        }
        textField.text = ""
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
