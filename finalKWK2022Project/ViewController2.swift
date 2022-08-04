//
//  ViewController2.swift
//  finalKWK2022Project
//
//  Created by Scholar on 8/4/22.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var label2: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func choice1(_ sender: Any) {
        label2.text = "Incorrect"
    }
    
    
    @IBAction func choice2(_ sender: Any) {
        label2.text = "Correct"
    }
    
    
    @IBAction func choice3(_ sender: Any) {
        label2.text = "Incorrect"
    }
    
    
    @IBAction func choice4(_ sender: Any) {
        label2.text = "Incorrect"
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
