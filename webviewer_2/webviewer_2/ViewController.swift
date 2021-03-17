//
//  ViewController.swift
//  webviewer_2
//
//  Created by 유환승 on 2021/03/17.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func clickmove(_ sender: Any) {
        
        if let controller = self.storyboard?.instantiateViewController(identifier: "Detail"){
                    //move controller
                    //push controller = navi
                    self.navigationController?.pushViewController(controller, animated: true)
                }
        
    }
    

}

