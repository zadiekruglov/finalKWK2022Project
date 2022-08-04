//
//  ViewController1.swift
//  finalKWK2022Project
//
//  Created by Scholar on 8/4/22.
//

import UIKit

class ViewController1: UIViewController {

    @IBOutlet weak var textLabel1: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func option1(_ sender: Any) {
        textLabel1.text = "Incorrect"
    }
    
    
    @IBAction func option2(_ sender: Any) {
        textLabel1.text = "Correct"
    }
    
    @IBAction func option3(_ sender: Any) {
        textLabel1.text = "Incorrect"
    }
    
    @IBAction func option4(_ sender: Any) {
        textLabel1.text = "Incorrect"
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
