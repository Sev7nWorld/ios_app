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
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func login(sender: UIButton) {
        var username = userNameTf.text
        var password = passwordTf.text
        if username == "admin" && password == "admin"{
            let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
            var vc:UIViewController = mainStoryboard.instantiateViewControllerWithIdentifier("indexStoryboardID") as UIViewController
            presentViewController(vc, animated: true, completion: nil)
        }else{
            var alertView = UIAlertView(title: "提示", message: "您输入的用户名或者密码有误，请重新尝试！", delegate: nil, cancelButtonTitle: "确定")
            alertView.show()
        }
    }
   
}
