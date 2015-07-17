//
//  GlassDetailViewController.swift
//  BeerStyles
//
//  Created by Paulo César Morandi Massuci on 17/07/15.
//
//

import UIKit
import Parse

class GlassDetailViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    var currentObject : PFObject?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gradientColor()
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        if let object = currentObject {
            nameLabel.text = object["name"] as? String
     
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}