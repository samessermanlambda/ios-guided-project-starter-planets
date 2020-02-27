//
//  PlanetsCollectionViewController.swift
//  Planets
//
//  Created by Samuel Esserman on 2/27/20.
//  Copyright © 2020 Lambda Inc. All rights reserved.
//

import UIKit

class PlanetsCollectionViewController: UICollectionViewController {
    
    let planetController = PlanetController()

    // This gets called after the VC finishes setting up (loading) its views
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        collectionView.reloadData()
    }


// MARK: UICollectionViewDataSource

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return planetController.planets.count
    }

//MARK: - Customize & Downcast
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PlanetCell", for: indexPath) as? PlanetCollectionViewCell else { fatalError("Cell is not a PlanetCollectionViewCell") }
                                            // indexPath.row == indexPath.item
        let planet = planetController.planets[indexPath.item]
        
        // This will trigger the updateViews() method automatically
        cell.planet = planet
    
        return cell
    }
}
