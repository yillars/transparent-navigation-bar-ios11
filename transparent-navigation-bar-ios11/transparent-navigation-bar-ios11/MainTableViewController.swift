//
//  MainTableViewController.swift
//  transparent-navigation-bar-ios11
//
//  Created by Serdar Yillar on 1.11.2017.
//  Copyright © 2017 Serdar Yillar. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.backgroundView = UIImageView(image: UIImage(named: "main_background"))
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.view.backgroundColor = UIColor.clear
        self.navigationController?.navigationBar.barStyle = UIBarStyle.black
        self.navigationController?.navigationBar.tintColor = UIColor.white
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
    }

    override func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        if (navigationController?.navigationBar) != nil {
            
            let blackImage = UIImage(color: .black)
            self.navigationController?.navigationBar.setBackgroundImage(blackImage, for: .default)
        }
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MainTableViewCell", for: indexPath)
        return cell
    }

}
