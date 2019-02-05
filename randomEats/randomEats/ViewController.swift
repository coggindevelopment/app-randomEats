//
//  ViewController.swift
//  randomEats
//
//  Created by Nicholas Coggin on 2/4/19.
//  Copyright © 2019 Nicholas Coggin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var restaurantsLabel: UILabel!
    @IBOutlet weak var randomRestaurantLabel: UILabel!
    @IBOutlet weak var youShouldEatAtLabal: UILabel!
    @IBOutlet weak var addRestaurantTextField: UITextField!
    @IBOutlet weak var addRestaurantBtn: UIButton!
    @IBOutlet weak var randomRestaurantStackView: UIStackView!
    @IBOutlet weak var addRestaurantStackView: UIStackView!
    @IBOutlet weak var restaurantsStackView: UIStackView!
    
    var restaurants: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }


}

