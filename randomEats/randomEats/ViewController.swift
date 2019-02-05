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
        
        restaurantsStackView.isHidden = true
        randomRestaurantStackView.isHidden = true
    }
    
    @IBAction func whereToEatBtnWasPressed(_ sender: Any) {
        randomRestaurantLabel.text = restaurants.randomElement()
        youShouldEatAtLabal.isHidden = false
        randomRestaurantLabel.isHidden = false
    }
    
    func updateRestaurantsLabel() {
        restaurantsLabel.text = restaurants.joined(separator: ", ")
    }

    @IBAction func addRestaurantBtnWasPressed(_ sender: Any) {
        guard let restaurantName = addRestaurantTextField.text else { return }
        
        if addRestaurantTextField.text == "" {
            // Do nothing
        } else {
            restaurants.append(restaurantName)
            updateRestaurantsLabel()
            addRestaurantTextField.text = ""
            restaurantsStackView.isHidden = false
            
            if restaurants.count > 1 {
                randomRestaurantStackView.isHidden = false
                youShouldEatAtLabal.isHidden = true
                randomRestaurantLabel.isHidden = true
            }
        }
    }
    
}

