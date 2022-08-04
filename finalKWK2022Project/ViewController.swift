//
//  ViewController.swift
//  finalKWK2022Project
//
//  Created by scholar on 8/2/22.
//

import UIKit

class ViewController: UIViewController {

    var selectedDictionary : [String : String] = [:]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var isabelleArsenault = [
      "name" : "Isabelle Arsenault",
      "link" : "https://www.instagram.com/isabelle_arsenault/?hl=en",
      "image" : "woman with blood",
      "description" : "Isabelle Arsenault is a Canadian award winning illustrator living in Montreal, Quebec. She is known for her elaborate yet simplified artwork in children's literature."
    ]
    
    var ramonaPintea = [
        "name" : "Ramona Pintea",
        "link" : "https://ramonapintea.com/",
        "image" : "tiger roaring at woman",
        "description" : "At the age of twelve I came across a book on Michelangelo, vibrant with colourful, magnificent paintings and I immediately connected with the art. I vowed to myself to escape the dreary, colourless communist system at the earliest opportunity and pursue a future in art. -Quote by artist."
    ]
    
    var connyLehman = [
        "name" : "Conny Lehman",
        "link" : "https://www.instagram.com/connylehmannart/?hl=en",
        "image" : "collage",
        "description" : "My inspiration emanates of my deep emotions. Far from any fear of a white paper, I start a picture applying dye with intuition and spontaneity. -Quote by artist."
    ]
    
    var monicaCook = [
        "name" : "Monica Cook",
        "link" : "https://www.instagram.com/monicacookstudio/",
        "image" : "sculpture",
        "description" : "Cook’s experimental sculptures revitalize discarded or scavenged objects through her transcendent use of materials, creating imaginative anatomies with power and empathy. In a series of structurally impressive composite works based on casts of trees, glass prisms seem to grow around and from tree trunks, with radiating mirrored extensions and naturalistic branches."
    ]
    
    var doaaEladl = [
        "name" : "Doaa Eladl",
        "link" : "https://www.instagram.com/doaa.eladl.cartoon/",
        "image" : "girl in red",
        "description" : "Doaa el-Adl is an Egyptian cartoonist currently working for the Al-Masry Al-Youm newspaper, known for her satirical cartoons with strong political, social or religious themes."
    ]
    
    var laurieSimmons = [
        "name" : "Laurie Simmons",
        "link" : "https://www.lauriesimmons.net/",
        "image" : "Object on Legs",
        "description" : "“living objects,” animating a dollhouse world suffused with nostalgia and colored by an adult’s memories, longings, and regrets. Simmons’s work blends psychological, political, and conceptual approaches to art making—transforming photography’s propensity to objectify people, especially women, into a sustained critique of the medium."
        
    ]
    
    var mayaAngelou = [
        "name" : "Maya Angelou"
    ]
    
    var aniaHoo = [
        "name" : "Ania Hoo",
        "link" : "@aniahoo"
    ]

    @IBAction func doaaButtonPressed(_ sender: Any) {
        selectedDictionary = doaaEladl
        performSegue(withIdentifier: "moveToArtistPage", sender: self)
    }
    @IBAction func monicaButtonPressed(_ sender: Any) {
        selectedDictionary = monicaCook
        performSegue(withIdentifier: "moveToArtistPage", sender: self)
    }
    @IBAction func isabelleButtonPressed(_ sender: Any) {
        selectedDictionary = isabelleArsenault
        performSegue(withIdentifier: "moveToArtistPage", sender: self)
    }
    @IBAction func ramonaButtonPressed(_ sender: Any) {
        selectedDictionary = ramonaPintea
        performSegue(withIdentifier: "moveToArtistPage", sender: self)
    }
    @IBAction func collageButtonPressed(_ sender: Any) {
        selectedDictionary = connyLehman
        performSegue(withIdentifier: "moveToArtistPage", sender: self)
    }
    @IBAction func laurieButtonPressed(_ sender: Any) {
        selectedDictionary = laurieSimmons
        performSegue(withIdentifier: "moveToArtistPage", sender: self)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "moveToArtistPage" {
            let destinationVC = segue.destination as? artistViewController
            destinationVC?.artistDictionary = selectedDictionary
        }
    }
}

