//
//  PokemonDetailVC.swift
//  pokedex
//
//  Created by 장창순 on 2016. 2. 25..
//  Copyright © 2016년 All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {

    @IBOutlet var mainImg: UIImageView!
    @IBOutlet var nameLbl: UILabel!
    @IBOutlet var pokedexIdLbl: UILabel!
    @IBOutlet var defenseLbl: UILabel!
    @IBOutlet var attackLbl: UILabel!
    @IBOutlet var weightLbl: UILabel!
    @IBOutlet var heightLbl: UILabel!
    @IBOutlet var typeLbl: UILabel!
    
    var pokemon: Pokemon!
    
    override func viewDidLoad() {
        super.viewDidLoad()

      let img = UIImage(named: "\(pokemon.pokedexID)")
      mainImg.image = img
      nameLbl.text = pokemon.name.uppercaseString
        
    pokemon.downloadPokemonDetails { () -> () in
        self.updateUI()
        }
    
    }

    func updateUI() {
        typeLbl.text = pokemon.type.uppercaseString
        heightLbl.text = pokemon.height.uppercaseString
        weightLbl.text = pokemon.weight.uppercaseString
        attackLbl.text = pokemon.attack
        defenseLbl.text = pokemon.defense
        pokedexIdLbl.text = "\(pokemon.pokedexID)"
    }
    
    @IBAction func backBtnPressed(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }


}
