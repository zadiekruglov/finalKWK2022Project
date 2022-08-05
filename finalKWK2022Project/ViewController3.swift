//
//  ViewController3.swift
//  finalKWK2022Project
//
//  Created by Scholar on 8/4/22.
//

import UIKit

class ViewController3: UIViewController {

    @IBOutlet weak var label3: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func pick1(_ sender: Any) {
        label3.text = "Incorrect"
    }
    
    @IBAction func pick3(_ sender: Any) {
        label3.text = "Correct"
    }
    
    @IBAction func pick2(_ sender: Any) {
        label3.text = "Incorrect"
    }
    
    @IBAction func pick4(_ sender: Any) {
        label3.text = "Incorrect"
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
