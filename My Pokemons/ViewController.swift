//
//  ViewController.swift
//  My Pokemons
//
//  Created by Bryan Cochrane on 30/11/2016.
//  Copyright © 2016 Bryan Cochrane. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tbPokemonName: UITextField!
    @IBOutlet weak var imgPokemon: UIImageView!
    @IBOutlet weak var lbPokemonName: UILabel!
    
    var pokemonList: [String] = ["caterpie", "ekans", "pikachu", "clefairy"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func bSearch(_ sender: AnyObject) {
        lbPokemonName.text = ""
        
        let pokemonName = tbPokemonName.text
        
        var isFound = false
        
        if pokemonName != "" {
            // Label will show text
            for name in pokemonList{
                if pokemonName == name {
                    lbPokemonName.text = pokemonName
                    isFound = true
                    break
                }
        }
            
            if !isFound {
                lbPokemonName.text = "Can't find \(pokemonName!)"
            }
        }
        else {
            // Show Alert Here
            let alert = UIAlertController(title: "Alert",
                                          message: "Pokemon's name cannot be empty",
                                          preferredStyle: UIAlertControllerStyle.alert)
            
            let action = UIAlertAction(title:"OK",
                                       style:UIAlertActionStyle.default,
                                       handler: nil)
            alert.addAction(action)
            self.present(alert, animated: true, completion: nil)
        }
        
    }

}

