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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func bSearch(_ sender: AnyObject) {
        lbPokemonName.text = tbPokemonName.text
    }

}

