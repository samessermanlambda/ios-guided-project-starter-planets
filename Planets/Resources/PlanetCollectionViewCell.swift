//
//  PlanetCollectionViewCell.swift
//  Planets
//
//  Created by Samuel Esserman on 2/27/20.
//  Copyright © 2020 Lambda Inc. All rights reserved.
//

import UIKit

class PlanetCollectionViewCell: UICollectionViewCell {

    //MARK: - Outlets
    @IBOutlet weak var planetImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    var planet: Planet? {
        didSet {
            updateViews()
        }
    }
    
    func updateViews() {
        
        guard let planet = planet else { return }
        
        planetImageView.image = planet.image
        nameLabel.text = planet.name
    }
    
}
