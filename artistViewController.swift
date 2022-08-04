//
//  artistViewController.swift
//  finalKWK2022Project
//
//  Created by scholar on 8/4/22.
//

import UIKit

class artistViewController: UIViewController {
    @IBOutlet weak var artPicture: UIImageView!
    
    var artistDictionary : [String : String] = [:]
    @IBOutlet weak var artistInfo: UILabel!
    
    @IBOutlet weak var artistDescription: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        artistInfo.text = "\(artistDictionary["name"]!)"
        artPicture.image = UIImage(named: "\(artistDictionary["image"]!)")
        artistDescription.text = "\(artistDictionary["description"]!)"

        // Do any additional setup after loading the view.
    }
    
    @IBAction func learnMore(_ sender: Any) {
        if let url = URL(string: "\(artistDictionary["link"]!)"){
            UIApplication.shared.open(url)
        }
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
