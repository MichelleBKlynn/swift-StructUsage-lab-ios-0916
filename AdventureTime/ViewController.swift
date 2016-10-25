//
//  ViewController.swift
//  AdventureTime
//
//  Created by James Campagno on 9/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var occupationLabel: UILabel!
    @IBOutlet weak var speciesLabel: UILabel!
    @IBOutlet weak var characterImageView: UIImageView!
    
    var finn: Character!
    var jake: Character!
    var bubblegum: Character!
    var bmo: Character!
    var lemongrab: Character!
    var lsp: Character!
    
    func createAllCharacters(){
        finn = Character(name: "Finn The Human", species: "Human", occupation: "Hero", powerLevel: 50.0)
        jake = Character(name: "Jake The Dog", species: "Dog", occupation: "Sidekick", powerLevel: 40.0)
        bubblegum = Character(name: "Princess Bubblegum", species: "Princess", occupation: "Princess", powerLevel: 25.0)
        lemongrab = Character(name: "Lemongrab", species: "Weirdo", occupation: "Screamer", powerLevel: 2.0)
        bmo = Character(name: "BMO", species: "Gameboy", occupation: "Gamer", powerLevel: 20.0)
        lsp = Character(name: "Lumpy Space Princess", species: "Princess", occupation: "Princess", powerLevel: 15.0)
        
    }
    
    func updateViews(with character:Character){
        characterImageView.image = character.displayImage()
        nameLabel.text = character.name
        occupationLabel.text = character.occupation
        speciesLabel.text = character.species

    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        
        print(sender.titleLabel?.text)
        
        func getCharacter() -> Character {
            switch sender.titleLabel?.text {
            case "Finn"?:
                return finn
            case "Jake"?:
                return jake
            case "Bubblegum"?:
                return bubblegum
            case "BMO"?:
                return bmo
            case "Lemongrab"?:
                return lemongrab
            case "LSP"?:
            return lsp
            default:
                return bmo
            }
        }

        updateViews(with: getCharacter())
        
        
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createAllCharacters()
    }
    
}

