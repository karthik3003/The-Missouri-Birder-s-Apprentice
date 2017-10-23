//
//  SecondViewController.swift
//  The Missouri Birder's Apprentice
//
//  Created by Laddipeerla,Karthik on 10/14/17.
//  Copyright © 2017 Laddipeerla,Karthik. All rights reserved.
//

import UIKit

class BirdsTableViewController: UITableViewController {
    
    var county:County!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //self.navigationItem.title = county.name
        // this will appear in the navigation bar: the user will be reminded of the airline, while perusing the list of cities flown
        
        tableView.register(BirdTableViewCell.self, forCellReuseIdentifier:"bird_cell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return county.birds.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "bird_cell", for: indexPath)
        cell.textLabel?.text = county.birds[indexPath.row].name
        cell.detailTextLabel?.text = county.birds[indexPath.row].latinName
        cell.imageView?.image = UIImage(named: "\(String(describing: county.birds[indexPath.row].name!)).jpg")
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let birdVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "bird_view_controller") as! BirdViewController
        
        birdVC.bird = county.birds[indexPath.row].name
        self.navigationController?.pushViewController(birdVC, animated: true)
        
    }
}

