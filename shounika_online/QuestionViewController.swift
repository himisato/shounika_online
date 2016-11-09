//
//  questionViewController.swift
//  shounika_online
//
//  Created by Himi Sato on 2016/11/07.
//  Copyright © 2016 Himi Sato. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let questionType = ["熱は何度ありますか？", "吐いていますか？", "下痢はしていますか？", "名前を呼んだ時、反応はありますか？", "食欲はありますか？", "湿疹等、皮膚に疾患が見られますか？"]
    
    @IBOutlet weak var questionTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questionType.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = questionType[indexPath.row]
        return cell
    }
    
    
    func tableView(tabel: UITableView, didSelectRowAtInexpPath indexPath: NSIndexPath){
        print(questionType[indexPath.row])
    }
    
    
    
    
    
}

