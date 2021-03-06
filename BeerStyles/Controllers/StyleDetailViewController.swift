////
////  StyleDetailViewController.swift
////  BeerStyles
////
////  Created by Paulo César Morandi Massuci on 14/07/15.
////  Copyright (c) 2015 Fernando H M Bastos. All rights reserved.
////
//
//import UIKit
//import MediaPlayer
//
//
//
//class StyleDetailViewController: UIViewController {
//  let gradientLayer = CAGradientLayer()
//    
//    @IBOutlet weak var scroll: UIScrollView!
//    @IBOutlet weak var name: UILabel!
//    @IBOutlet weak var tempMAX: UILabel!
//    @IBOutlet weak var glasses: UILabel!
//    var currentObject : Any!
//    @IBOutlet weak var construction: UILabel!
//    
//    @IBOutlet weak var description: UILabel!
//    @IBOutlet weak var characteristics: UILabel!
//    @IBOutlet weak var abvRange: UILabel!
//    @IBOutlet weak var foodPairing: UILabel!
//    @IBOutlet weak var tempRange: UILabel!
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        Description.sizeToFit()
//        
//        playVideo()
//        
//        //gradientColor()
//        
//        
//            }
//    
//    //ajuste do tamnaho da scroll view e da view superior para impedir scroll horizontal
//    
//    func adjustContentSize() {
//        var contentRect = CGRect.zero
//        for view in self.scroll.subviews {
//            contentRect = contentRect.union(view.frame)
//        }
//        
//        self.scroll.contentSize = contentRect.size
//    }
//    
//    
//    
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        
////
////        //substituição dos valores de variável do Parse no perfil da cerveja
////        if let object = currentObject {
////
////            //pega o valor textual do label e iguala ao valor textual da chave em questão (name, description, etc)
////
////            name.text = object["name"] as? String
////            Description.text = object["description"] as? String
////            characteristics.text = object["characteristics"] as? String
////            foodPairing.text = object["food"] as? String
////
////
////
////            if let abvMin : Float = object["abvMin"] as? Float {
////                if let abvMax : Float = object["abvMax"] as? Float {
////                    abvRange.text = "\(abvMin) - \(abvMax)%"
////                } else {
////                    abvRange.text = "\(abvMin)%"
////                }
////            } else {
////                abvRange.text = "Non-alcoholic"
////            }
////
////            if let tempMin : Float = object["tempMin"] as? Float {
////                if let tempMax : Float = object["tempMax"] as? Float {
////                    tempRange.text = "\(tempMin)º  - \(tempMax)º"
////                } else {
////                    tempRange.text = "\(tempMin)º"
////                }
////            } else {
////                tempRange.text = "No recomendation"
////            }
////
////
////
////
////
////                        Description.sizeToFit()
////
////
////
////
////        }
////
////        adjustContentSize()
////
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//    }
//}
