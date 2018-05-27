//
//  ViewController.swift
//  321_omikuji
//
//  Created by 三井 裕貴 on 2018/05/25.
//  Copyright © 2018年 三井 裕貴. All rights reserved.
//

import UIKit

class ViewController: UIViewController{

    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    let meal = ["coffee","pasta","pizza","breakfast"]
    
    
      override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func startButton(_ sender: UIButton) {
        
        let random1 = Int(arc4random_uniform(UInt32(meal.count)))
        
//        アラート作成
        let test = UIAlertController(title: "ご飯", message: meal[random1] , preferredStyle: .alert)
        
        test.addAction(UIAlertAction(title: "いいね！", style: .default, handler: { (action) in
            
            if self.meal[random1] == "coffee"{
                self.imageView.image = UIImage(named: "coffee-pink.jpg")
                
            }else if self.meal[random1] == "pasta"{
              self.imageView.image = UIImage(named: "pasta.jpg")
                
            }else if self.meal[random1] == "pizza"{
                self.imageView.image = UIImage(named: "pizza.jpg")
                
            }else if self.meal[random1] == "breakfast"{
                self.imageView.image = UIImage(named: "breakfast.jpg")
            }
            
            
        }))
        
        present(test, animated: true, completion: nil)
        
    }
    
   

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

