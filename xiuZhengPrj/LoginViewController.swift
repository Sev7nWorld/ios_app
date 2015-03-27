//
//  LoginViewController.swift
//  xiuZhengPrj
//
//  Created by hux on 15-3-25.
//  Copyright (c) 2015年 hux. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    @IBOutlet weak var userNameTf: UITextField!    
    @IBOutlet weak var passwordTf: UITextField!
    @IBOutlet weak var loginBotton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        //let redColor = UIColor(red: 255.0/255.0, green: 0/255.0, blue: 0/255.0, alpha: 1)
        //self.navigationController?.navigationBar.backgroundColor = UIColor.redColor()
        
        //loginBotton.frame = CGRectMake(90, 200, 200, 60)
        //loginBotton.frame = CGRect(x:100, y:100,width:100,height:50)
        
        // Do any additional setup after loading the view.
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
