//
//  PokeCell.swift
//  pokedex
//
//  Created by 장창순 on 2016. 2. 25..
//  Copyright © 2016년 Swiftbook. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {
 
    @IBOutlet var thumImg: UIImageView!
    @IBOutlet var nameLbl: UILabel!
    
    var pokemon: Pokemon!
    
    
    
    func configureCell(pokemon: Pokemon) {
        self.pokemon = pokemon
        
        nameLbl.text = self.pokemon.name.capitalizedString
        thumImg.image = UIImage(named: "\(self.pokemon.pokedexID)")
        
    }
    
}
