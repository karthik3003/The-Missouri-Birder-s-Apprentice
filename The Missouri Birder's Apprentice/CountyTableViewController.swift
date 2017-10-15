//
//  FirstViewController.swift
//  The Missouri Birder's Apprentice
//
//  Created by Laddipeerla,Karthik on 10/14/17.
//  Copyright © 2017 Laddipeerla,Karthik. All rights reserved.
//

import UIKit

class CountyTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.navigationItem.title = "Counties"
        
        tableView.register(CountyTableViewCell.self, forCellReuseIdentifier: "county_cell")
    }
    
    override func viewWillAppear(_ animated: Bool) {
          tableView.reloadData()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        // Return the number of sections.
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Return the number of rows in the section.
        return State.numCounty()
    }
    
    
    // The usual method for populating the cell
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier:"county_cell", for: indexPath)
        
        let county = State.countyNum(indexPath.row)
        cell.textLabel?.text = county.name
        
        
        return cell
        
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let birdsInCounty:BirdsTableViewController = BirdsTableViewController()
        
        // Examine CitiesFlownTableViewController -- you will see it defines an airline property that we configure here
        // so that by the time that TVC becomes visible, the airline's property & cities will be displayed to the user
        
        birdsInCounty.county = State.countyNum(indexPath.row)
        
        // Every UIViewController, if it is part of a UINavigationController stack, has a navigationController property that references that
        // UINavigationController.  This is quite handy, when we want to push a new view controller
        self.navigationController?.pushViewController(birdsInCounty, animated: true)
    }


}

