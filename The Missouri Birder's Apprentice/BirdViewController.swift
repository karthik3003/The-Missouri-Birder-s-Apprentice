//
//  BirdViewController.swift
//  The Missouri Birder's Apprentice
//
//  Created by Karthik Laddipeerla on 10/14/17.
//  Copyright © 2017 Laddipeerla,Karthik. All rights reserved.
//

import UIKit

class BirdViewController: UIViewController {
    var bird:String!
    
    let bird1 = Bird()
    
    
    @IBOutlet weak var locationLBL: UILabel!
    
    @IBOutlet weak var sightingsTF: UITextField!
    @IBOutlet weak var dateLBL: UILabel!
    
    @IBOutlet weak var updtSightingsBTN: UIButton!
    
    @IBOutlet weak var imageIV: UIImageView!
    
    @IBAction func incrementSightings(_ sender: Any) {
        bird1.updateNumSightings()
        sightingsTF.text = "\(bird1.numberOfSightings)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = bird
        imageIV.image = UIImage(named: "\(bird!).jpg")
        
    //    sightingsTF.text = "\(BirdsTableViewController.county.birds)"
        locationLBL.text = "\(bird1.location!)"
        dateLBL.text = "\(bird1.dateFirstSighted)"
        
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
