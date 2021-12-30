//
//  popupViewController.swift
//  03ViewStruct
//
//  Created by 송윤근 on 2021/12/30.
//

import UIKit

class popupViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func onbtnClose(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
        
    }
    

}
