//
//  segueViewController.swift
//  finalKWK2022Project
//
//  Created by scholar on 8/3/22.
//

import UIKit

class segueViewController: UIViewController {

    @IBOutlet weak var opt1: UIButton!
    @IBOutlet weak var opt2: UIButton!
    @IBOutlet weak var opt4: UIButton!
    @IBOutlet weak var opt6: UIButton!
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var opt5: UIButton!
    @IBOutlet weak var opt3: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func Isabelle(_ sender: Any) {
        label.text = ("(Instagram: @isabelle_arsenault) - Girl with the blood on her dress")
    }
    
    @IBAction func Ramona(_ sender: Any) {
        label.text = ("(Website: https://ramonapintea.com/) - Woman with a tiger roaring at her")
    }
    @IBAction func Conny(_ sender: Any) {
        label.text = ("(Instagram: @connylehmannart) - Collage")
    }
    
    @IBAction func Monica(_ sender: Any) {
        label.text = ("(Instagram: @monicacookstudio) - Sculpture")
    }
    @IBAction func Doaa(_ sender: Any) {
        label.text = ("(Instagram: @doaa.eladl.cartoon) - Girl in a red coat")
    }
    
    @IBAction func Laurie(_ sender: Any) {
        label.text = ("Objects on legs")
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
