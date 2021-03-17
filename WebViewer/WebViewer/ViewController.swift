//
//  ViewController.swift
//  WebViewer
//
//  Created by 유환승 on 2021/03/17.
//

import UIKit

class ViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func click_move(_ sender: Any) {
        //story board에서 컨트롤러를 찾는다.
        //DetailController
        
        //옵셔널 바인딩
        if let controller = self.storyboard?.instantiateViewController(identifier: "DetailController"){
            //move controller
            //push controller = navi
            self.navigationController?.pushViewController(controller, animated: true)
        }
    }

}

