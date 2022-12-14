//
//  ViewController.swift
//  Test
//
//  Created by 최유진 on 2022/12/04.
//

import UIKit

class ViewController: UIViewController{
    //var alarm = Timer()
    @IBOutlet var lblpicker: UILabel!
    var cnt = 0
    @IBOutlet var current: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let interval = 1.0
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: #selector(self.updateTime), userInfo: nil, repeats: true)
        
    }
    
    @IBAction func datePicker(_ sender: UIDatePicker) {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm"
        lblpicker.text = formatter.string(from: sender.date)
        self.cnt = 1
        
        //if lblpicker.text == current.text{
            //print("time")
            /*
            let alert = UIAlertController(title: "알람", message: "알람입니다.", preferredStyle: UIAlertController.Style.alert)
            let action = UIAlertAction(title: "네", style: UIAlertAction.Style.default)
            alert.addAction(action)
            present(alert, animated: true)
            */
        //}
         
    }
    @objc func updateTime(){
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm"
        current.text = formatter.string(from: date)
        if lblpicker.text == current.text  {
            if self.cnt == 1{
                print("same minute")
                let alert = UIAlertController(title: "알람", message: "알람입니다.", preferredStyle: UIAlertController.Style.alert)
                let action = UIAlertAction(title: "네", style: UIAlertAction.Style.default)
                alert.addAction(action)
                present(alert, animated: true)
                self.cnt = 0
            }
            
        }
    }
}

