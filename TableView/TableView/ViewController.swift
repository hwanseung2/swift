//
//  ViewController.swift
//  TableView
//
//  Created by 유환승 on 2021/03/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var newsData : Array<Dictionary<String, Any>>?
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let news = newsData{
            return news.count
        }
        else{
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = TableViewMain.dequeueReusableCell(withIdentifier: "Type1", for: indexPath) as! Type1
        
        let idx = indexPath.row
        if let news = newsData{
            
            let row = news[idx]
            if let r = row as? Dictionary<String, Any> {
                print("TITLE :: \(r)")
                if let title = r["title"] as? String{
                cell.LabelText.text = title
                }
        }
    }
        
        
        return cell
        
    }
        
    func getNews()
    {
        let task = URLSession.shared.dataTask(with: URL(string: "https://newsapi.org/v2/top-headlines?country=kr&apiKey=721168d22d8d4ad4827f07d1e722ca41")!) { (data, response, error) in
            
            if let dataJson = data{
                
                //json으로 바꿔줘야한다. json으로 변환을 해줘야한다.
                do {
                    let json = try JSONSerialization.jsonObject(with: dataJson, options: []) as! Dictionary<String, Any>

                    
                    let articles = json["articles"] as! Array<Dictionary<String, Any>>
                    print(articles)
                    self.newsData = articles
                    DispatchQueue.main.async {
                        self.TableViewMain.reloadData()
                    }
                    // Main에서 화면을 그리도록 작업해줘야함.
                    
                    }
                    //swift에서 json은 dictionary라고 한다.
                catch{}
                }
            }
        task.resume()
    }
    
    
    //Click
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Click !!!\(indexPath.row)")
        // 사전준비물은? news api key발급
    }

    @IBOutlet weak var TableViewMain: UITableView!
    //1. http 통신 방법!!!! - 뉴스 : urlsession을 통해서
    //2. json  데이터 형태 (서버-서버, 서버-클라이언트 등 데이터를 주고받을 때 쓰는 규약같은 느낌이다.) 기본적인 형태는 {"돈"."10000"} 이 형태 key - value 데이터 형태 {["10", "100","꽝"]} key 형태
    //3. TableView matching!!
    //4. 네트워크 통신을 하게되면 background에서 돈다! : UI를 그리는 건 메인이기 때문
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        TableViewMain.delegate = self
        TableViewMain.dataSource = self
        
        getNews()
    }


}

