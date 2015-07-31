//
//  CategotyViewController.swift
//  BeerStyles
//
//  Created by Paulo César Morandi Massuci on 16/07/15.
//
//

import UIKit
import Parse
import AVFoundation
import Bolts


class CategotyViewController: UIViewController {

    @IBOutlet weak var buttonAle: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let navBarAppearance = UINavigationBar.appearance()
        navBarAppearance.backgroundColor = UIColor.clearColor()
        //navigationController?.navigationBar.backgroundColor = UIColor.clearColor()

        gradientColor()

        // Do any additional setup after loading the view.
    }
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //BOTÕES DE CATEGORIA
    @IBAction func aleSelect(sender: AnyObject) {
        self.selectType("Ale")
    }
    
    @IBAction func lagerSelect(sender: AnyObject) {
        self.selectType("Lager")
    }
    
    @IBAction func spontaneousSelect(sender: AnyObject) {
        self.selectType("Spontaneous")
    }
    
    //Promise pra garantir que a a próxima será carregarada antes do segue
    
    func selectType(typeName: NSString) {
        var promise : BFTask = parseFind(typeName)
        promise.continueWithBlock {
            (task: BFTask!) -> AnyObject in
            self.performSegueWithIdentifier("categoryToFather", sender: promise.result)
            return promise.result
        }

    }
    
    //segue
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "categoryToFather" {
            if let destination = segue.destinationViewController as? FatherStyleViewController {
                
                destination.categoryObject = (sender as! PFObject)
                
                
              
            }
        }

    }
    
    //função que cria a query
    func parseFind(type:NSString)->BFTask{
        var query = PFQuery(className:"Category")
        query.whereKey("name", equalTo:type)
       var sender = query.getFirstObjectInBackground()
        return sender
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
