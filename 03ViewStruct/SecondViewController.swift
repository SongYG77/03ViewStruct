//
//  SecondViewController.swift
//  03ViewStruct
//
//  Created by 송윤근 on 2021/12/29.
//

import UIKit

class SecondViewController: UIViewController  {
    

    override func viewDidLoad() {
        super.viewDidLoad()

       print("두번째 화면")
    }
    
    @IBAction func onbtnNext(_ sender: UIButton) {
        let NewVC = self.storyboard?.instantiateViewController(withIdentifier: "ThirdVC") as! ThirdViewController
        self.navigationController?.pushViewController(NewVC, animated: true)
        
    }
    
    @IBAction func onbtnBack(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
        
    }
    

}
