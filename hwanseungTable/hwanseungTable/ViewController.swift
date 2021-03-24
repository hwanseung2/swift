//
//  ViewController.swift
//  hwanseungTable
//
//  Created by 유환승 on 2021/03/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    // 빨간색을 눌렀을 때 만든거
    
    @IBOutlet weak var TableViewmain: UITableView!
    
    
    func tableViewMain(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // 데이터가 몇개니? 를 의미 -> 숫자를 반환해야한다.
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // 데이터가 무엇이니? 반복 10번을 하지않을까? 추측해보기
        // method : 2가지
        // 1번 방법 - 임의의 셀을 그냥 만들기
        let cell = UITableViewCell.init(style: .default, reuseIdentifier: "")
        cell.textLabel?.text = "\(indexPath.row)"
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        TableViewmain.delegate = self
        TableViewmain.dataSource = self
        
    }
    
    //Tableview란 무엇인가 Table로 된 view이다.
    //Table : 여러개의 행이 모여있는 목록 뷰(화면)
    //이걸쓰는이유 : 정갈하게 보여주려고! ex) 전화번호부
    
    //테이블 뷰를 사용하기 위해 필요한 요소
    // 1. 데이터가 무엇인지 - 전화번호부 목록
    // 2. 데이터가 몇개인지 - 100, 1000, 10000개
    // 3. 데이터 행 눌렸다. - 클릭했다.


}

