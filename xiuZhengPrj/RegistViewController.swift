//
//  RegistViewController.swift
//  xiuZhengPrj
//
//  Created by hux on 15-3-25.
//  Copyright (c) 2015年 hux. All rights reserved.
//

import UIKit

class RegistViewController: UIViewController {

    @IBOutlet weak var phoneNumTf: UITextField!
    @IBOutlet weak var checkCodeTf: UITextField!
    
    @IBOutlet weak var passwordTf: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func phoneEditEnd(sender: AnyObject) {
        if self.phoneNumTf.text == "" {
            self.phoneNumTf.text = "请填写正确的手机号"
            
            
            
        }
    }

    @IBAction func passwordEditEnd(sender: AnyObject) {
    }
    @IBAction func checkCodeEditEnd(sender: AnyObject) {
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
