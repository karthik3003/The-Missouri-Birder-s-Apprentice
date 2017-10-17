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
       
        
        sightingsTF.text = "\(String(describing: bird1.numberOfSightings))"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = bird
        sightingsTF.text = "0"
        imageIV.image = UIImage(named: "\(bird!).jpg")
        locationLBL.text = "\(bird1.location.latitude, bird1.location.longitude)"
        let dt = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy - HH.mm.ssss"
        let result = formatter.string(from: Date())
        dateLBL.text = result
        
        
    //    sightingsTF.text = "\(BirdsTableViewController.county.birds)"
        
        
        
        
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        
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
