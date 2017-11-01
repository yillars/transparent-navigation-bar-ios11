//
//  DetailController.swift
//  transparent-navigation-bar-ios11
//
//  Created by Serdar Yillar on 1.11.2017.
//  Copyright © 2017 Serdar Yillar. All rights reserved.
//

import UIKit

class DetailController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Detail"

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let blackImage = UIImage(color: .black)
        self.navigationController?.navigationBar.setBackgroundImage(blackImage, for: .default)
        
    }
    
}
