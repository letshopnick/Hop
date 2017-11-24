//
//  ViewController.swift
//  Hop
//
//  Created by Nicholas Jones on 2017-11-23.
//  Copyright © 2017 Hop. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var barNames = ["STAGES NIGHTCLUB", "ALE HOUSE", "SPOT NIGHTCLUB", "TRINITY SOCIAL"]
    var barImages = ["Stock1", "Stock2", "Stock3", "Stock4"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return barNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! BarTableViewCell

        cell.barNameLabel.text = barNames[indexPath.row]
        cell.barImage.image = UIImage(named: barImages[indexPath.row])
        
        return cell
    }

}

