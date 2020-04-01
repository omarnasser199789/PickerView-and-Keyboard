//
//  ViewController.swift
//  PickerView and Keyboard
//
//  Created by Omar Nasser on 4/1/20.
//  Copyright © 2020 Omar Nasser. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UIPickerViewDataSource,UIPickerViewDelegate{
    
    var gender=["male","feamle"]
    
    @IBOutlet weak var laselectgender: UILabel!
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    var selectGender=0
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        laselectgender.text=gender[row]
        
        
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return gender.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        selectGender=row
        return gender[row]
    }
    

    @IBOutlet weak var pickerGender: UIPickerView!
    @IBOutlet weak var laDisplaybestwghit: UILabel!
    @IBOutlet weak var textAge: UITextField!
    
    @IBOutlet weak var texthight: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        pickerGender.delegate=self
        pickerGender.dataSource=self
        
        
    }

    @IBAction func buGetbestwight(_ sender: Any) {
        let age:Int = Int(textAge.text!)!
        let  hight:Int=Int(texthight.text!)!
        
        var best_wight=hight*10-(age/5)
        
        if selectGender==0 {
            best_wight+=10
        }
        else{
            best_wight-=10
        }
        laDisplaybestwghit.text="Best wight \(best_wight/19)"
        
    }
    
}

