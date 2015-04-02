//
//  PublishViewController.swift
//  xiuZhengPrj
//
//  Created by 赵鑫 on 15-4-1.
//  Copyright (c) 2015年 hux. All rights reserved.
//

import UIKit

class PublishViewController: UIViewController,UITextViewDelegate {

    @IBOutlet weak var characterNum: UILabel!
    @IBOutlet weak var contentTextView: UITextView!
    
    @IBOutlet weak var cityPicker: UIPickerView!
    var districtModel: DistrictModel = DistrictModel()
    var proArr: [String] = []
    var ctiArr: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contentTextView.text = "请输入发布信息的内容"
        
        proArr = districtModel.getAllProvience()
        ctiArr = districtModel.getProCtisByIndex(0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func textViewDidBeginEditing(textView: UITextView){
        contentTextView.text = ""
        
    }
    func textViewDidChange(textView: UITextView){
        var content = contentTextView.text
        var len = countElements(content)
        characterNum.text = "\(200 - len)"
        if (200 - len) == 0{
            contentTextView.endEditing(true)
        }
    }

    @IBAction func showLocation(sender: AnyObject) {
        cityPicker.hidden = false
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int)->Int {
        if component==0 {
            return proArr.count
        }else{
            return ctiArr.count
        }
        
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        if component==0 {
            return proArr[row]
        }else{
            return ctiArr[row]
        }
        
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int,inComponent component:Int){
        if component==0{
            ctiArr = districtModel.getProCtisByIndex(row)
            pickerView.reloadComponent(1)
        }
    }

}
