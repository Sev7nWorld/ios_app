//
//  PublisherTableViewController.swift
//  xiuZhengPrj
//
//  Created by 姬磊 on 15/3/26.
//  Copyright (c) 2015年 hux. All rights reserved.
//

import UIKit

class PublisherTableViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var searchTf: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        //let image = UIImage(named: "search_icon")!.resizableImageWithCapInsets(
           // UIEdgeInsets(top: 0, left: 14, bottom: 0, right: 14))
        //let btnImg = UIImage(named: "search_icon")
        //btnImg?.resizableImageWithCapInsets(resizingMode(top:0,))
        //searchTf.background = image
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 2
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        var cell = tableView.dequeueReusableCellWithIdentifier("cell1", forIndexPath: indexPath) as UITableViewCell
        
        return cell
    }

}
