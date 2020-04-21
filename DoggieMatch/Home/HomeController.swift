//
//  ViewController.swift
//  DoggieMatch
//
//  Created by Alexis Orellano on 4/13/20.
//  Copyright © 2020 Alexis Orellano. All rights reserved.
//

import UIKit

class HomeController: UIViewController {
    let homeView = HomeView()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let endpoint = Shelter.searchAnimal(breed: "Maltese")
        print(endpoint.request)
    }
    
    override func loadView() {
        view = homeView
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = true
    }
}

